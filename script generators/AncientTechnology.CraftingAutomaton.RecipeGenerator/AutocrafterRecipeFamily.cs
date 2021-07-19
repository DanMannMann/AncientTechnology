using System;
using System.Collections.Generic;
using System.Text;

namespace Autocrafter.RecipeParser
{
    public class AutocrafterRecipeFamily
    {
        private int currentGroup = 0;

        public AutocrafterRecipeFamily(int groupCount, int index)
        {
            if (groupCount <= 0) throw new ArgumentOutOfRangeException();
            if (index < 0) throw new ArgumentOutOfRangeException();
            Name = $"rcp_fam_{index}";
            Index = index;
            Groups = new List<AutocrafterRecipeGroup>();
            for (var i = 0; i < groupCount; i++)
            {
                Groups.Add(new AutocrafterRecipeGroup(i));
            }
        }

        public string Name { get; }
        public int Index { get; }
        public List<AutocrafterRecipeGroup> Groups { get; }

        /// <summary>
        /// returns false when it wraps around, so we know to move on to the next family
        /// </summary>
        public bool AddToNextGroup(AutocrafterRecipe recipe)
        {
            recipe.RecipeFamily = Name;
            var group = Groups[currentGroup++];
            recipe.RecipeGroup = group.Name;
            group.Recipes.Add(recipe);
            if (currentGroup == Groups.Count)
            {
                currentGroup = 0;
                return false;
            }
            return true;
        }

        public string GetCraftChecker()
        {
            var sb = new StringBuilder();
            foreach (var group in Groups)
            {
                sb.AppendLine($"execute as @s at @s if entity @s[tag={group.Name}] run function ancient_technology:ancient_automaton/recipes/{Name}/{group.Name}/check_crafts");
            }
            return sb.ToString();
        }

        public string GetDropChecker()
        {
            var sb = new StringBuilder();
            foreach (var group in Groups)
            {
                sb.AppendLine($"execute as @s at @s if entity @s[tag={group.Name}] run function ancient_technology:ancient_automaton/recipes/{Name}/{group.Name}/drop_items");
            }
            return sb.ToString();
        }
    }
}
