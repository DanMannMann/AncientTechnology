using System.Collections.Generic;
using System.Text;

namespace Autocrafter.RecipeParser
{
    public class AutocrafterRecipeGroup
    {
        public AutocrafterRecipeGroup(int index)
        {
            Index = index;
            Name = $"rcp_grp_{index}";
            Recipes = new List<AutocrafterRecipe>();
        }

        public string Name { get; }
        public int Index { get; }
        public List<AutocrafterRecipe> Recipes { get; }

        public string GetCraftChecker()
        {
            var sb = new StringBuilder();
            foreach (var recipe in Recipes)
            {
                sb.AppendLine($"execute as @s at @s if entity @s[tag={recipe.RecipeName}] run function ancient_technology:ancient_automaton/recipes/{recipe.RecipeFamily}/{recipe.RecipeGroup}/{recipe.RecipeName}");
            }
            return sb.ToString();
        }

        public string GetDropChecker()
        {
            var sb = new StringBuilder();
            foreach (var recipe in Recipes)
            {
                sb.AppendLine(recipe.GetDropChecker());
            }
            return sb.ToString();
        }
    }
}
