using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Autocrafter.RecipeParser
{
    public class ItemEntry
    {
        public override string ToString()
        {
            return Items?.FirstOrDefault() != null ? $"Item: {Items?.FirstOrDefault()}" : $"Tag: {Tags?.FirstOrDefault()}";
        }

        [JsonProperty("item")]
        public List<string> Items { get; set; } = new List<string>();

        public List<string> Tags { get; set; } = new List<string>();

        public int Count { get; set; }

        public bool IsCoalOrCharcoal { get => Items.Count() == 2 && Items.All(x => x.Contains("coal", StringComparison.OrdinalIgnoreCase)); }
        public bool IsDye => Items.SingleOrDefault()?.Contains("dye") ?? false;
    }

}
