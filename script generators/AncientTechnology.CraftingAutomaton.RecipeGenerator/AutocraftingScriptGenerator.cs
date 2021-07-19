using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Autocrafter.RecipeParser
{
    public class AutocraftingScriptGenerator
    {
        private const double GroupSize = 15d;
        private const double FamilySize = 4d;

        public void GenerateAutocraftingScripts(Dictionary<string, Tag> tags, List<AutocrafterRecipe> recipes, List<AutocrafterDyeRecipe> dyeingRecipes)
        {
            var root = CreateCraftingDirectoryStructure(recipes);
            WriteDirectory(root);
            var chroma = CreateChromatronDirectoryStructure(dyeingRecipes);
            WriteDirectory(chroma);
        }

        public ScriptDirectory CreateChromatronDirectoryStructure(List<AutocrafterDyeRecipe> dyeingRecipes)
        {
            var dyeRecipes = dyeingRecipes.GroupBy(x => x.DyeIngredient.Items.First()).ToList();

            var chroma = new ScriptDirectory { Name = "chromatron" };
            foreach (var direction in new (string dir, string cord)[] { ("north", "~ ~ ~-1"), ("east", "~1 ~ ~"), ("south", "~ ~ ~1"), ("west", "~-1 ~ ~") })
            {
                var checkDye = new StringBuilder();
                var dirDir = new ScriptDirectory { Name = direction.dir };
                var resultsDir = new ScriptDirectory { Name = "result" };
                chroma.Add(dirDir);
                dirDir.Add(resultsDir);
                foreach (var dye in dyeRecipes)
                {
                    checkDye.AppendLine($"execute as @s at @s if data block {direction.cord} Items[{{Slot: 4b, id: \"{dye.Key}\"}}] run function ancient_technology:chromatron/{direction.dir}/check_item_{dye.Key.Replace("_dye", "").Replace("minecraft:", "")}");
                    var checkItems = new StringBuilder();
                    foreach (var item in dye)
                    {
                        checkItems.AppendLine($"execute as @s at @s if data block ~ ~ ~ Items[{{Slot: 4b, id: \"{item.TargetIngredient.Items.First()}\"}}] run function ancient_technology:chromatron/{direction.dir}/result/{item.ResultItem.Replace("minecraft:", "")}");
                        var result = @$"execute as @s at @s run summon item ~ ~-0.5 ~ {{Item:{{id:""{item.ResultItem}"", Count: {item.ResultCount}b}}}}
execute as @s at @s run function ancient_technology:chromatron/{direction.dir}/remove_items";
                        resultsDir.Add(new McFunctionFile { Name = item.ResultItem.Replace("minecraft:", ""), Body = result });
                    }
                    dirDir.Add(new McFunctionFile { Name = $"check_item_{dye.Key.Replace("_dye", "").Replace("minecraft:", "")}", Body = checkItems.ToString() });
                }
                dirDir.Add(new McFunctionFile { Name = "check_dye", Body = checkDye.ToString() });
                dirDir.Add(new McFunctionFile { Name = "remove_items", Body = $@"
execute as @s at @s store result score @s autoc_slot1 run data get block {direction.cord} Items[4].Count
execute as @s at @s store result score @s autoc_slot2 run data get block ~ ~ ~ Items[4].Count
scoreboard players remove @s autoc_slot1 1
scoreboard players remove @s autoc_slot2 1
execute as @s at @s store result block {direction.cord} Items[4].Count byte 1 run scoreboard players get @s autoc_slot1
execute as @s at @s store result block ~ ~ ~ Items[4].Count byte 1 run scoreboard players get @s autoc_slot2
" });
            }

            return chroma;
        }

        public void WriteDirectory(ScriptDirectory dir)
        {
            if (!System.IO.Directory.Exists(System.IO.Path.Combine(Environment.CurrentDirectory, dir.Path)))
            {
                System.IO.Directory.CreateDirectory(System.IO.Path.Combine(Environment.CurrentDirectory, dir.Path));
            }
            foreach (McFunctionFile file in dir)
            {
                System.IO.File.WriteAllText(System.IO.Path.Combine(Environment.CurrentDirectory, file.Path), file.Body);
            }
            foreach (ScriptDirectory sub in (dir as IList<ScriptDirectory>))
            {
                WriteDirectory(sub);
            }
        }

        public ScriptDirectory CreateCraftingDirectoryStructure(List<AutocrafterRecipe> recipes)
        {
            var totalOps = (double)recipes.Count;
            var numberOfGroups = (int)Math.Round(totalOps / GroupSize, MidpointRounding.AwayFromZero);
            var numberOfFamilies = (int)Math.Round(numberOfGroups / FamilySize, MidpointRounding.AwayFromZero);

            var families = new List<AutocrafterRecipeFamily>();
            for (var i = 0; i < numberOfFamilies; i++)
            {
                families.Add(new AutocrafterRecipeFamily((int)FamilySize, i));
            }

            var family = families.First();
            var fi = 0;
            foreach (var recipe in recipes)
            {
                if (!family.AddToNextGroup(recipe))
                {
                    fi++;
                    if (fi == families.Count) fi = 0;
                    family = families[fi];
                }
            }

            var rootCrafts = new StringBuilder();
            foreach (var str in families.Select(x => $"execute as @s at @s if entity @s[tag={x.Name}] run function ancient_technology:ancient_automaton/recipes/{x.Name}/check_crafts"))
            {
                rootCrafts.AppendLine(str);
            }
            var rootDrops = new StringBuilder();
            foreach (var str in families.Select(x => $"execute as @s at @s if entity @s[tag={x.Name}] run function ancient_technology:ancient_automaton/recipes/{x.Name}/drop_items"))
            {
                rootDrops.AppendLine(str);
            }
            var checkRecipes = new StringBuilder();
            foreach (var str in recipes.Select(x => x.GetSetRecipeChecker()))
            {
                checkRecipes.AppendLine(str);
            }
            var root = new ScriptDirectory
            {
                Name = "recipes"
            };
            root.Add(new McFunctionFile
            {
                Name = "check_recipes",
                Body = checkRecipes.ToString()
            });
            root.Add(new McFunctionFile
            {
                Name = "check_crafts",
                Body = rootCrafts.ToString()
            });
            root.Add(new McFunctionFile
            {
                Name = "drop_items",
                Body = rootDrops.ToString()
            });
            foreach (var f in families)
            {
                var familyFolder = new ScriptDirectory
                {
                    Name = f.Name
                };
                root.Add(familyFolder);
                familyFolder.Add(new McFunctionFile
                {
                    Name = "check_crafts",
                    Body = f.GetCraftChecker()
                });
                familyFolder.Add(new McFunctionFile
                {
                    Name = "drop_items",
                    Body = f.GetDropChecker()
                });

                foreach (var group in f.Groups)
                {
                    var groupFolder = new ScriptDirectory
                    {
                        Name = group.Name
                    };
                    familyFolder.Add(groupFolder);
                    foreach (var recipe in group.Recipes)
                    {
                        groupFolder.Add(new McFunctionFile
                        {
                            Name = recipe.RecipeName,
                            Body = recipe.GetCraftChecker().body

                        });
                        groupFolder.Add(new McFunctionFile
                        {
                            Name = recipe.RecipeSetterFileName,
                            Body = recipe.GetRecipeSetter().body
                        });
                    }
                    groupFolder.Add(new McFunctionFile
                    {
                        Name = "check_crafts",
                        Body = group.GetCraftChecker()
                    });
                    groupFolder.Add(new McFunctionFile
                    {
                        Name = "drop_items",
                        Body = group.GetDropChecker()
                    });
                }
            }

            return root;
        }
    }
}
