using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Autocrafter.RecipeParser
{
    public class AutocrafterDyeRecipe
    {
        public AutocrafterDyeRecipe(MinecraftRecipe recipe)
        {
            if (2 != (recipe.Ingredients?.Any(x => x != null) == true ? recipe.Ingredients.Count : recipe.Key.Count))
                throw new InvalidOperationException("More than 2 ingredients");
            var i1 = recipe.Ingredients?.Any(x => x != null) == true ? recipe.Ingredients.First() : recipe.Key.First().Value;
            var i2 = recipe.Ingredients?.Any(x => x != null) == true ? recipe.Ingredients.Last() : recipe.Key.Last().Value;

            if (i1.IsDye)
            {
                DyeIngredient = i1;
                TargetIngredient = i2;
            }
            else if (i2.IsDye)
            {
                DyeIngredient = i2;
                TargetIngredient = i1;
            }
            else
            {
                throw new InvalidOperationException("Weird combo of ingredients");
            }
            ResultItem = recipe.Result.Items.First();
            ResultCount = recipe.Result.Count > 0 ? recipe.Result.Count : 1;
        }

        public override string ToString()
        {
            return $"{ResultItem}({ResultCount}) - {DyeIngredient}, {TargetIngredient}";
        }

        public ItemEntry DyeIngredient { get; }
        public ItemEntry TargetIngredient { get; }
        public string ResultItem { get; set; }
        public int ResultCount { get; set; }
    }

    /// <summary>
    /// <para>1 2 3</para>
    /// <para>4 5 6</para>
    /// <para>7 8 9</para>
    /// </summary>
    public class AutocrafterRecipe
    {
        private Dictionary<string, List<AutocrafterSlot>> keys = new Dictionary<string, List<AutocrafterSlot>>();

        public IEnumerable<AutocrafterSlot> Slots
        { 
            get => new AutocrafterSlot[] 
            {
                Slot1,
                Slot2,
                Slot3,
                Slot4,
                Slot5,
                Slot6,
                Slot7,
                Slot8,
                Slot9,
            }; 
        }

        public AutocrafterRecipe(MinecraftRecipe recipe, Dictionary<string,Tag> itemTags, int index)
        {
            FromMinecraftRecipe(recipe, itemTags);
            Index = index;
        }

        public override string ToString()
        {
            return $"{ResultItem}({ResultCount}) - {string.Join(",", Slots)}";
        }

        private void ParsePattern(string[] pattern)
        {
            if (pattern != null && pattern.Any(x => !string.IsNullOrWhiteSpace(x)))
            {
                var p = string.Join("", pattern.Select(x => x.PadRight(3)));
                for (var i = 0; i < p.Length; i++)
                {
                    var val = p[i].ToString();
                    if (!string.IsNullOrWhiteSpace(val))
                    {
                        if (!keys.ContainsKey(val))
                        {
                            keys.Add(val, new List<AutocrafterSlot>());
                        }
                        switch (i)
                        {
                            case 0:
                                keys[val].Add(Slot1);
                                break;
                            case 1:
                                keys[val].Add(Slot2);
                                break;
                            case 2:
                                keys[val].Add(Slot3);
                                break;
                            case 3:
                                keys[val].Add(Slot4);
                                break;
                            case 4:
                                keys[val].Add(Slot5);
                                break;
                            case 5:
                                keys[val].Add(Slot6);
                                break;
                            case 6:
                                keys[val].Add(Slot7);
                                break;
                            case 7:
                                keys[val].Add(Slot8);
                                break;
                            case 8:
                                keys[val].Add(Slot9);
                                break;
                        }
                    }
                }
            }
        }
        private void FromMinecraftRecipe(MinecraftRecipe recipe, Dictionary<string, Tag> itemTags)
        {
            if (recipe.Ingredients != null && recipe.Ingredients.Any(x => x != null))
            {
                // shapeless
                FromShapelessMinecraftRecipe(recipe, itemTags);
            }
            else
            {
                // shaped
                ParsePattern(recipe.Pattern);
                foreach (var t in recipe.Key)
                {
                    keys[t.Key].ForEach(slot => AddToSlot(slot, t.Value, itemTags));
                }
            }

            ResultItem = recipe.Result.Items.First();
            ResultCount = recipe.Result.Count > 0 ? recipe.Result.Count : 1;
        }

        private void FromShapelessMinecraftRecipe(MinecraftRecipe recipe, Dictionary<string, Tag> itemTags)
        {
            for (var i = 0; i < recipe.Ingredients.Count; i++)
            {
                switch (i)
                {
                    case 0:
                        AddToSlot(Slot1, recipe.Ingredients[i], itemTags);
                        break;
                    case 1:
                        AddToSlot(Slot2, recipe.Ingredients[i], itemTags);
                        break;
                    case 2:
                        AddToSlot(Slot3, recipe.Ingredients[i], itemTags);
                        break;
                    case 3:
                        AddToSlot(Slot4, recipe.Ingredients[i], itemTags);
                        break;
                    case 4:
                        AddToSlot(Slot5, recipe.Ingredients[i], itemTags);
                        break;
                    case 5:
                        AddToSlot(Slot6, recipe.Ingredients[i], itemTags);
                        break;
                    case 6:
                        AddToSlot(Slot7, recipe.Ingredients[i], itemTags);
                        break;
                    case 7:
                        AddToSlot(Slot8, recipe.Ingredients[i], itemTags);
                        break;
                    case 8:
                        AddToSlot(Slot9, recipe.Ingredients[i], itemTags);
                        break;
                }
            }
        }

        private void AddToSlot(AutocrafterSlot slot, ItemEntry itemEntry, Dictionary<string, Tag> itemTags)
        {
            slot.Items.AddRange(itemEntry.Tags.Where(x => !string.IsNullOrWhiteSpace(x)).SelectMany(x => itemTags[x].Values));
            slot.Items.AddRange(itemEntry.Items.Where(x => !string.IsNullOrWhiteSpace(x)));
        }

        public AutocrafterSlot Slot1 { get; } = new AutocrafterSlot(1);
        public AutocrafterSlot Slot2 { get; } = new AutocrafterSlot(2);
        public AutocrafterSlot Slot3 { get; } = new AutocrafterSlot(3);
        public AutocrafterSlot Slot4 { get; } = new AutocrafterSlot(4);
        public AutocrafterSlot Slot5 { get; } = new AutocrafterSlot(5);
        public AutocrafterSlot Slot6 { get; } = new AutocrafterSlot(6);
        public AutocrafterSlot Slot7 { get; } = new AutocrafterSlot(7);
        public AutocrafterSlot Slot8 { get; } = new AutocrafterSlot(8);
        public AutocrafterSlot Slot9 { get; } = new AutocrafterSlot(9);
        public string ResultItem { get; set; }
        public int ResultCount { get; set; }
        public string RecipeGroup { get; set; }
        public string RecipeFamily { get; set; }
        public int Index { get; set; }
        public string RecipeName => $"rcp_{Index}";

        public string RecipeSetterFileName => $"{RecipeName}_setter";

        public string GetDropChecker()
        {

            if (ResultItem.Contains("firework_rocket"))
            {
                var flight = Slots.Count(x => x.Used) - 1;
                return @$"execute as @s at @s if entity @s[tag={RecipeName}] run summon item ~ ~-0.5 ~ {{Item:{{id:""{ResultItem}"", tag:{{Fireworks:{{Flight:{flight}}}}}, Count: {ResultCount}b}}}}";
            }
            else
            {
                return @$"execute as @s at @s if entity @s[tag={RecipeName}] run summon item ~ ~-0.5 ~ {{Item:{{id:""{ResultItem}"", Count: {ResultCount}b}}}}";
            }
        }

        public (string name, string body) GetCraftChecker()
        {
            var sb = new StringBuilder();
            if (Slot1.Used)
            {
                sb.AppendLine("# Slot 1 check");
                sb.AppendLine(GetSlotCheckers(Slot1, "~-1 ~ ~-1"));
                sb.AppendLine();
            }

            if (Slot2.Used)
            {
                sb.AppendLine("# Slot 2 check");
                sb.AppendLine(GetSlotCheckers(Slot2, "~0 ~0 ~-1"));
                sb.AppendLine();
            }

            if (Slot3.Used)
            {
                sb.AppendLine("# Slot 3 check");
                sb.AppendLine(GetSlotCheckers(Slot3, "~1 ~0 ~-1"));
                sb.AppendLine();
            }

            if (Slot4.Used)
            {
                sb.AppendLine("# Slot 4 check");
                sb.AppendLine(GetSlotCheckers(Slot4, "~-1 ~0 ~0"));
                sb.AppendLine();
            }

            if (Slot5.Used)
            {
                sb.AppendLine("# Slot 5 check");
                sb.AppendLine(GetSlotCheckers(Slot5, "~0 ~0 ~-0"));
                sb.AppendLine();
            }

            if (Slot6.Used)
            {
                sb.AppendLine("# Slot 6 check");
                sb.AppendLine(GetSlotCheckers(Slot6, "~1 ~0 ~-0"));
                sb.AppendLine();
            }

            if (Slot7.Used)
            {
                sb.AppendLine("# Slot 7 check");
                sb.AppendLine(GetSlotCheckers(Slot7, "~-1 ~0 ~1"));
                sb.AppendLine();
            }

            if (Slot8.Used)
            {
                sb.AppendLine("# Slot 8 check");
                sb.AppendLine(GetSlotCheckers(Slot8, "~0 ~-0 ~1"));
                sb.AppendLine();
            }

            if (Slot9.Used)
            {
                sb.AppendLine("# Slot 9 check");
                sb.AppendLine(GetSlotCheckers(Slot9, "~1 ~-0 ~1"));
                sb.AppendLine();
            }
            return (RecipeName, sb.ToString());
        }

        public string GetSetRecipeChecker()
        {
            if (ResultItem.Contains("firework_rocket"))
            {
                var flight = Slots.Count(x => x.Used) - 1;
                return $"execute as @s at @s if entity @s[tag=!recipe_set] if block ~ ~ ~ minecraft:dropper{{Items:[{{Count: {ResultCount}b, Slot:4b,id:'{ResultItem}',tag:{{Fireworks:{{Flight:{flight}}}}}}}]}} run function ancient_technology:crafting_automaton/recipes/{RecipeFamily}/{RecipeGroup}/{RecipeSetterFileName}";
            }
            else
            {
                return $"execute as @s at @s if entity @s[tag=!recipe_set] if block ~ ~ ~ minecraft:dropper{{Items:[{{Count: {ResultCount}b, Slot:4b,id:'{ResultItem}'}}]}} run function ancient_technology:crafting_automaton/recipes/{RecipeFamily}/{RecipeGroup}/{RecipeSetterFileName}";
            }
        }

        private string GetSlotCheckers(AutocrafterSlot slot, string coords)
        {
            var sb = new StringBuilder();
            foreach (var item in slot.Items)
            {
                sb.AppendLine(
                    $"execute as @s at @s if block {coords} minecraft:dropper{{Items:[{{id:'{item}', Slot: 4b}}]}} store result score @s autoc_slot{slot.SlotNumber} run data get block {coords} Items[4].Count");
            }
            return sb.ToString();
        }

        public (string name, string body) GetRecipeSetter()
          => ($"{RecipeName}_setter", $@"
# mark the entity as set up
data merge entity @s {{Tags:['recipe_set', '{RecipeFamily}', '{RecipeGroup}', '{RecipeName}', 'crafting_automaton', 'placed', 'installed_crafting']}}

# set the recipe shape
scoreboard players set @s autoc_slot1_tgt {(Slot1.Used ? 1 : -1)}
scoreboard players set @s autoc_slot2_tgt {(Slot2.Used ? 1 : -1)}
scoreboard players set @s autoc_slot3_tgt {(Slot3.Used ? 1 : -1)}
scoreboard players set @s autoc_slot4_tgt {(Slot4.Used ? 1 : -1)}
scoreboard players set @s autoc_slot5_tgt {(Slot5.Used ? 1 : -1)}
scoreboard players set @s autoc_slot6_tgt {(Slot6.Used ? 1 : -1)}
scoreboard players set @s autoc_slot7_tgt {(Slot7.Used ? 1 : -1)}
scoreboard players set @s autoc_slot8_tgt {(Slot8.Used ? 1 : -1)}
scoreboard players set @s autoc_slot9_tgt {(Slot9.Used ? 1 : -1)}

execute as @s at @s run function ancient_technology:crafting_automaton/set_blockers

# put the ingredient slots in
{(Slot1.Used ? $"execute as @s at @s run data modify block ~-1 ~ ~-1 Items[4] set value {{id:'{Slot1.PrimaryItem}',Slot:4b,Count:1b}}" : "# slot 1 not used")}
{(Slot2.Used ? $"execute as @s at @s run data modify block ~0 ~0 ~-1 Items[4] set value {{id:'{Slot2.PrimaryItem}',Slot:4b,Count:1b}}" : "# slot 2 not used")}
{(Slot3.Used ? $"execute as @s at @s run data modify block ~1 ~0 ~-1 Items[4] set value {{id:'{Slot3.PrimaryItem}',Slot:4b,Count:1b}}" : "# slot 3 not used")}
{(Slot4.Used ? $"execute as @s at @s run data modify block ~-1 ~0 ~0 Items[4] set value {{id:'{Slot4.PrimaryItem}',Slot:4b,Count:1b}}" : "# slot 4 not used")}
{(Slot5.Used ? $"execute as @s at @s run data modify block ~0 ~0 ~-0 Items[4] set value {{id:'{Slot5.PrimaryItem}',Slot:4b,Count:1b}}" : "# slot 5 not used")}
{(Slot6.Used ? $"execute as @s at @s run data modify block ~1 ~0 ~-0 Items[4] set value {{id:'{Slot6.PrimaryItem}',Slot:4b,Count:1b}}" : "# slot 6 not used")}
{(Slot7.Used ? $"execute as @s at @s run data modify block ~-1 ~0 ~1 Items[4] set value {{id:'{Slot7.PrimaryItem}',Slot:4b,Count:1b}}" : "# slot 7 not used")}
{(Slot8.Used ? $"execute as @s at @s run data modify block ~0 ~-0 ~1 Items[4] set value {{id:'{Slot8.PrimaryItem}',Slot:4b,Count:1b}}" : "# slot 8 not used")}
{(Slot9.Used ? $"execute as @s at @s run data modify block ~1 ~-0 ~1 Items[4] set value {{id:'{Slot9.PrimaryItem}',Slot:4b,Count:1b}}" : "# slot 9 not used")}

# make it fancy
particle minecraft:dragon_breath ~ ~ ~ 5 5 5 0.1 3000
");

    }

}
