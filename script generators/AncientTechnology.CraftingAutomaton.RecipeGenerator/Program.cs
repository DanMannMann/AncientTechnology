using System;
using System.IO;
using System.Linq;
using System.Security.Cryptography;

namespace Autocrafter.RecipeParser
{
    partial class Program
    {
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

            // get recipe jsons from chosen version
            var recipes = new MinecraftRecipeProcessor().GetRecipesForVersion(dir);

            // convert to our model
            var j = 0;
            var ancientTechRecipes = recipes.craftingRecipes.Select(x => new AutocrafterRecipe(x, recipes.itemTags, j++)).ToList();
            var ancientTechDyeingRecipes = recipes.dyeingRecipes.Where(x => x.Ingredients.Count == 2).Select(x => new AutocrafterDyeRecipe(x)).ToList();

            // generate script directories
            new AutocraftingScriptGenerator().GenerateAutocraftingScripts(recipes.itemTags, ancientTechRecipes, ancientTechDyeingRecipes);
        }
    }
}
