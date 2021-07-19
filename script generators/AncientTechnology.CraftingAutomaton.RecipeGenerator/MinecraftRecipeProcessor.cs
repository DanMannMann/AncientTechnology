using Ionic.Zip;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace Autocrafter.RecipeParser
{
    public class MinecraftRecipeProcessor
    {
        static Func<MinecraftRecipe, bool> isDye = x => (x.Ingredients.Count == 2 &&
                                        x.Ingredients.Any(x => x.Items.Any(y => y?.Contains("dye") == true))); // we only support dye mixing recipes with 2 inputs - 3 and 4 input ones can be done with a chain of autocrafting
        static Func<MinecraftRecipe, bool> isWax = x => x.Ingredients.Count == 2 &&
                                        x.Ingredients.Any(x => x.Items.Any(y => y?.Contains("honeycomb") == true)) &&
                                        x.Ingredients.Any(x => !x.Items.Any(y => y?.Contains("honeycomb") == true));

        public (List<MinecraftRecipe> dyeingRecipes, List<MinecraftRecipe> waxingRecipes, List<MinecraftRecipe> craftingRecipes, Dictionary<string,Tag> itemTags) GetRecipesForVersion(string dir)
        {
            var allRecipes = GetCraftingRecipesFromGame(dir);
            var (dyeingRecipes, waxingRecipes, craftingRecipes) = FixUpRecipes(allRecipes);
            var tags = GetItemTagsFromGame(dir);
            return (dyeingRecipes, waxingRecipes, craftingRecipes, tags);
        }

        private Dictionary<string, Tag> GetItemTagsFromGame(string dir)
        {
            var tags = new Dictionary<string, Tag>();
            using (var zip = ZipFile.Read($"{dir}\\{dir.Substring(dir.LastIndexOf("\\"))}.jar"))
            {
                int totalEntries = zip.Entries.Count;
                var ofInterest = zip.Entries.Where(x => !x.IsDirectory &&
                                                        x.FileName.Contains("data/minecraft/tags/items/")).ToList();

                ofInterest.ForEach(e =>
                {
                    using var ms = new MemoryStream((int)e.UncompressedSize);
                    using var sw = new StreamReader(ms);
                    e.Extract(ms);
                    ms.Position = 0;
                    var f = sw.ReadToEnd();
                    var tag = JsonConvert.DeserializeObject<Tag>(f);
                    var tagName = e.FileName.Replace("data/minecraft/tags/items/", "").Replace(".json", "");
                    tags.Add($"minecraft:{tagName}", tag);
                });
                // NOTE not supported: shulker dyeing and all special recipes except basic firework rockets of duration 1, 2 & 3
            }
            return tags;
        }

        private List<MinecraftRecipe> GetCraftingRecipesFromGame(string dir)
        {
            var allRecipes = new List<MinecraftRecipe>();
            using (var zip = ZipFile.Read($"{dir}\\{dir.Substring(dir.LastIndexOf("\\"))}.jar"))
            {
                int totalEntries = zip.Entries.Count;
                var ofInterest = zip.Entries.Where(x => !x.IsDirectory &&
                                                        x.FileName.Contains("data/minecraft/recipes") &&
                                                        !x.FileName.Contains("smelting") &&
                                                        !x.FileName.Contains("smithing") &&
                                                        !x.FileName.Contains("smoking") &&
                                                        !x.FileName.Contains("stonecutting") &&
                                                        !x.FileName.Contains("cooking") &&
                                                        !x.FileName.Contains("cooked") &&
                                                        !x.FileName.Contains("blasting") &&
                                                        !x.FileName.Contains("firework_rocket_simple")
                                                        ).ToList();

                ofInterest.ForEach(e =>
                {
                    using var ms = new MemoryStream((int)e.UncompressedSize);
                    using var sw = new StreamReader(ms);
                    e.Extract(ms);
                    ms.Position = 0;
                    var f = sw.ReadToEnd();
                    var stub = JsonConvert.DeserializeObject<RecipeStub>(f);
                    if (f.Contains("shaped") || f.Contains("shapeless"))
                        allRecipes.Add(JsonConvert.DeserializeObject<MinecraftRecipe>(f, new ItemEntryConverter()));
                });
                // NOTE not supported: shulker dyeing and all special recipes except basic firework rockets of duration 1, 2 & 3
            }
            var tags = allRecipes.Where(x => x.Ingredients?.Any(y => y.Tags?.Any(z => z != null) == true) == true ||
                                             x.Key?.Any(y => y.Value.Tags?.Any(z => z != null) == true) == true)
                                 .ToList();
            return allRecipes;
        }

        private (List<MinecraftRecipe> dyeingRecipes, List<MinecraftRecipe> waxingRecipes, List<MinecraftRecipe> craftingRecipes) FixUpRecipes(List<MinecraftRecipe> allRecipes)
        {
            if (allRecipes.Any(x => x.Result.Items.Count() > 1)) throw new Exception("Warning: multiple results added to the game");
            var shapelessRecipes = allRecipes.Where(x => x.Type.Contains("shapeless"));
            var groupedByResult = allRecipes.GroupBy(x => x.Result.Items.First().Split(":")[1]).ToList();

            // requires dyeing machine
            // also contains dye mixing recipes with exactly 2 dyes
            var dyeingRecipes = shapelessRecipes.Where(isDye).ToList();

            // requires waxing machine
            var waxingRecipes = shapelessRecipes.Where(isWax).ToList();

            // Dye mixing recipes with more than 2 dyes - requires dyeing machine
            var dyeMixingRecipes = allRecipes.Where(x => !dyeingRecipes.Any(z => z.TransientId == x.TransientId))
                                             .Where(x => !waxingRecipes.Any(z => z.TransientId == x.TransientId))
                                             .Where(x => x.Ingredients?.All(y => y.Items?.First()?.Contains("dye") == true) == true ||
                                                         x.Key?.All(y => y.Value?.Items?.First()?.Contains("dye") == true) == true)
                                             .ToList();
            dyeingRecipes.AddRange(dyeMixingRecipes);

            // Can always identify these recipes from result item inserted during recipe setting
            var differentiatedByResultType = allRecipes.Where(x => !dyeingRecipes.Any(z => z.TransientId == x.TransientId))
                                                       .Where(x => !waxingRecipes.Any(z => z.TransientId == x.TransientId))
                                                       .GroupBy(x => x.Result.Items.First().Split(":")[1])
                                                       .Select(x => (x.Key, x.Count(), x))
                                                       .Where(x => x.Item2 == 1)
                                                       .SelectMany(x => x.x)
                                                       .ToList();

            // Potentially ambigiuous based on type of result item...
            var multipleRecipeItems = allRecipes.Where(x => !dyeingRecipes.Any(z => z.TransientId == x.TransientId))
                                                .Where(x => !waxingRecipes.Any(z => z.TransientId == x.TransientId))
                                                .Where(x => !differentiatedByResultType.Any(z => z.TransientId == x.TransientId))
                                                .GroupBy(x => x.Result.Items.First().Split(":")[1])
                                                .Select(x => (x.Key, x.Count(), x))
                                                .Where(x => x.Item2 > 1)
                                                .ToList();

            // ...but these can be disambiguated by using the number of result items to infer the specific recipe...
            var differentiatedByResultCount =
                multipleRecipeItems.SelectMany(x => WhereResultCountIsUnique(x.x)).ToList();

            // ...and these remaining all have the same number of ingredient slots so can watch multiple ingredient types per slot to trigger the craft
            var remainingRecipes = allRecipes.Where(x => !dyeingRecipes.Any(z => z.TransientId == x.TransientId))
                                      .Where(x => !waxingRecipes.Any(z => z.TransientId == x.TransientId))
                                      .Where(x => !differentiatedByResultType.Any(z => z.TransientId == x.TransientId))
                                      .Where(x => !differentiatedByResultCount.Any(z => z.TransientId == x.TransientId))
                                      .ToList();

            if (!remainingRecipes.All(x => x.Type.Contains("shapeless"))) throw new Exception("Shaped recipes remaining");
            var variableRecipes = GroupRecipesByResultType(remainingRecipes);

            var craftingRecipes = new List<MinecraftRecipe>(differentiatedByResultType);
            craftingRecipes.AddRange(variableRecipes);
            craftingRecipes.AddRange(GetFireworksRecipes());
            craftingRecipes.AddRange(differentiatedByResultCount);

            return (dyeingRecipes, waxingRecipes, craftingRecipes);
        }

        private static List<MinecraftRecipe> GroupRecipesByResultType(List<MinecraftRecipe> remainingRecipes)
        {
            foreach (var resultType in remainingRecipes.GroupBy(x => x.Result.Items.First()))
            {
                if (resultType.Select(z => z.Ingredients.Count).Distinct().Count() > 1)
                    throw new Exception("Jagged remaining recipes");
            }

            var variableRecipes = remainingRecipes.GroupBy(x => x.Result.Items.First()).Select(x =>
            {
                var firstRecipe = x.First();
                var slotCount = x.First().Ingredients.Count;
                var slots = new List<ItemEntry>
                {
                    new ItemEntry(),
                    new ItemEntry(),
                    new ItemEntry(),
                    new ItemEntry(),
                    new ItemEntry(),
                    new ItemEntry(),
                    new ItemEntry(),
                    new ItemEntry(),
                    new ItemEntry()
                };
                foreach (var recipe in x)
                {
                    for (var r = 0; r < recipe.Ingredients.Count; r++)
                    {
                        slots[r].Items.AddRange(recipe.Ingredients[r].Items);
                        slots[r].Items = slots[r].Items.Distinct().ToList();

                        slots[r].Tags.AddRange(recipe.Ingredients[r].Tags);
                        slots[r].Tags = slots[r].Tags.Distinct().ToList();
                    }
                }
                firstRecipe.Ingredients = slots;
                return firstRecipe;
            }).ToList();
            return variableRecipes;
        }

        private List<MinecraftRecipe> GetFireworksRecipes()
        {
            return new List<MinecraftRecipe>
                {
                    new MinecraftRecipe
                    {
                        Ingredients = new List<ItemEntry>
                        {
                            new ItemEntry
                            {
                                Items = new List<string>
                                {
                                    "minecraft:paper"
                                }
                            },
                            new ItemEntry
                            {
                                Items = new List<string>
                                {
                                    "minecraft:gunpowder"
                                }
                            }
                        },
                        Result = new ItemEntry
                        {
                            Count = 3,
                            Items = new List<string>
                            {
                                "minecraft:firework_rocket"
                            }
                        }
                    },
                    new MinecraftRecipe
                    {
                        Ingredients = new List<ItemEntry>
                        {
                            new ItemEntry
                            {
                                Items = new List<string>
                                {
                                    "minecraft:paper"
                                }
                            },
                            new ItemEntry
                            {
                                Items = new List<string>
                                {
                                    "minecraft:gunpowder"
                                },
                            },
                            new ItemEntry
                            {
                                Items = new List<string>
                                {
                                    "minecraft:gunpowder"
                                }
                            }
                        },
                        Result = new ItemEntry
                        {
                            Count = 3,
                            Items = new List<string>
                            {
                                "minecraft:firework_rocket"
                            }
                        }
                    },
                    new MinecraftRecipe
                    {
                        Ingredients = new List<ItemEntry>
                        {
                            new ItemEntry
                            {
                                Items = new List<string>
                                {
                                    "minecraft:paper"
                                }
                            },
                            new ItemEntry
                            {
                                Items = new List<string>
                                {
                                    "minecraft:gunpowder"
                                }
                            },
                            new ItemEntry
                            {
                                Items = new List<string>
                                {
                                    "minecraft:gunpowder"
                                }
                            },
                            new ItemEntry
                            {
                                Items = new List<string>
                                {
                                    "minecraft:gunpowder"
                                }
                            }
                        },
                        Result = new ItemEntry
                        {
                            Count = 3,
                            Items = new List<string>
                            {
                                "minecraft:firework_rocket"
                            }
                        }
                    }
                };
        }

        private IEnumerable<MinecraftRecipe> WhereResultCountIsUnique(IEnumerable<MinecraftRecipe> recipes)
        {
            var allCounts = recipes.Select(x => x.Result.Count).ToList();
            var unique = new List<MinecraftRecipe>();
            foreach (var r in recipes)
            {
                if (allCounts.Count(x => x == r.Result.Count) == 1) unique.Add(r);
            }
            return unique;
        }
    }
}
