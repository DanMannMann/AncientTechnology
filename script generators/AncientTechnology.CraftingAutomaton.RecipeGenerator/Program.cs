using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;

namespace Autocrafter.RecipeParser
{
    partial class Program
    {
        private const double GroupSize = 15d;
        private const double FamilySize = 4d;

        static void Main(string[] args)
        {
            var i = 0;
            var dirs = Directory.EnumerateDirectories($"{Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData)}\\.minecraft\\versions").ToList();
            var labels = dirs.Select(x => $"[{i++}] {x.Substring(x.LastIndexOf("\\"))}").ToList();
            i = 0;
            foreach (var d in labels)
            {
                Console.Write(d.Substring(0, Math.Min(20, d.Length)).PadRight(20));
                Console.Write("          ");
                if (++i % 2 == 0) Console.WriteLine();
            }
            Console.WriteLine();
            Console.Write("Choose version: ");
            var choice = Console.ReadLine();
            var dir = dirs[int.Parse(choice)];
            var recipes = new MinecraftRecipeProcessor().GetRecipesForVersion(dir);
            GenerateAutocraftingScripts(recipes.itemTags, recipes.craftingRecipes, recipes.dyeingRecipes);
        }

        private static void GenerateAutocraftingScripts(Dictionary<string, Tag> tags, List<MinecraftRecipe> craftingRecipes, List<MinecraftRecipe> dyeingRecipes)
        {
            var j = 0;
            var recipes = craftingRecipes.Select(x => new AutocrafterRecipe(x, tags, j++)).ToList();
            var root = CreateCraftingDirectoryStructure(recipes);
            WriteDirectory(root);
            var chroma = CreateChromatronDirectoryStructure(dyeingRecipes);
            WriteDirectory(chroma);
        }

        private static ScriptDirectory CreateChromatronDirectoryStructure(List<MinecraftRecipe> dyeingRecipes)
        {
            var dyeRecipes = dyeingRecipes.Where(x => x.Ingredients.Count == 2).Select(x => new AutocrafterDyeRecipe(x)).GroupBy(x => x.DyeIngredient.Items.First()).ToList();

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

        private static void WriteDirectory(ScriptDirectory dir)
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

        private static ScriptDirectory CreateCraftingDirectoryStructure(List<AutocrafterRecipe> recipes)
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
            foreach (var str in families.Select(x => $"execute as @s at @s if entity @s[tag={x.Name}] run function ancient_technology:crafting_automaton/recipes/{x.Name}/check_crafts"))
            {
                rootCrafts.AppendLine(str);
            }
            var rootDrops = new StringBuilder();
            foreach (var str in families.Select(x => $"execute as @s at @s if entity @s[tag={x.Name}] run function ancient_technology:crafting_automaton/recipes/{x.Name}/drop_items"))
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

    public class ScriptDirectory : IList<McFunctionFile>, IList<ScriptDirectory>
    {
        private List<McFunctionFile> files = new List<McFunctionFile>();
        private List<ScriptDirectory> subfolders = new List<ScriptDirectory>();

        public McFunctionFile this[int index] { get => ((IList<McFunctionFile>)files)[index]; set => ((IList<McFunctionFile>)files)[index] = value; }

        public ScriptDirectory Parent { get; set; }
        public string Name { get; set; }
        public string Path => $"{Parent?.Path}{Name}/";
        public void Add(McFunctionFile item)
        {
            item.Directory = this;
            ((ICollection<McFunctionFile>)files).Add(item);
        }

        public void Insert(int index, McFunctionFile item)
        {
            item.Directory = this;
            ((IList<McFunctionFile>)files).Insert(index, item);
        }

        public void Insert(int index, ScriptDirectory item)
        {
            item.Parent = this;
            ((IList<ScriptDirectory>)subfolders).Insert(index, item);
        }

        public void Add(ScriptDirectory item)
        {
            item.Parent = this;
            ((ICollection<ScriptDirectory>)subfolders).Add(item);
        }

        #region IList<File>
        public int Count { get => ((ICollection<McFunctionFile>)files).Count; }
        public bool IsReadOnly { get => ((ICollection<McFunctionFile>)files).IsReadOnly; }

        ScriptDirectory IList<ScriptDirectory>.this[int index] { get => ((IList<ScriptDirectory>)subfolders)[index]; set => ((IList<ScriptDirectory>)subfolders)[index] = value; }

        public void Clear()
        {
            ((ICollection<McFunctionFile>)files).Clear();
        }

        public bool Contains(McFunctionFile item)
        {
            return ((ICollection<McFunctionFile>)files).Contains(item);
        }

        public void CopyTo(McFunctionFile[] array, int arrayIndex)
        {
            ((ICollection<McFunctionFile>)files).CopyTo(array, arrayIndex);
        }

        public IEnumerator<McFunctionFile> GetEnumerator()
        {
            return ((IEnumerable<McFunctionFile>)files).GetEnumerator();
        }

        public int IndexOf(McFunctionFile item)
        {
            return ((IList<McFunctionFile>)files).IndexOf(item);
        }

        public bool Remove(McFunctionFile item)
        {
            return ((ICollection<McFunctionFile>)files).Remove(item);
        }

        public void RemoveAt(int index)
        {
            ((IList<McFunctionFile>)files).RemoveAt(index);
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return ((IEnumerable)files).GetEnumerator();
        }
        #endregion

        #region IList<Dir>
        public int IndexOf(ScriptDirectory item)
        {
            return ((IList<ScriptDirectory>)subfolders).IndexOf(item);
        }

        public bool Contains(ScriptDirectory item)
        {
            return ((ICollection<ScriptDirectory>)subfolders).Contains(item);
        }

        public void CopyTo(ScriptDirectory[] array, int arrayIndex)
        {
            ((ICollection<ScriptDirectory>)subfolders).CopyTo(array, arrayIndex);
        }

        public bool Remove(ScriptDirectory item)
        {
            return ((ICollection<ScriptDirectory>)subfolders).Remove(item);
        }

        IEnumerator<ScriptDirectory> IEnumerable<ScriptDirectory>.GetEnumerator()
        {
            return ((IEnumerable<ScriptDirectory>)subfolders).GetEnumerator();
        }
        #endregion
    }

    public class McFunctionFile
    {
        public ScriptDirectory Directory { get; set; }
        public string Name { get; set; }
        public string Body { get; set; }
        public string Path => $"{Directory?.Path}{Name}.mcfunction";
    }
}
