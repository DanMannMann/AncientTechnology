using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Autocrafter.RecipeParser
{
    public class MinecraftRecipe : RecipeStub
    {
        public override string ToString()
        {
            return $"{Type}: {Result.Items[0]}({Result.Count}) - {string.Join(" & ", Ingredients?.Select(x => x.Items?.FirstOrDefault() ?? x.Tags?.FirstOrDefault())  ?? Key?.Select(x => x.Value.Items?.FirstOrDefault() ?? x.Value.Tags?.FirstOrDefault()))}";
        }
        public Guid TransientId { get; } = Guid.NewGuid();
        public string[] Pattern { get; set; }
        public List<ItemEntry> Ingredients { get; set; }
        public Dictionary<string, ItemEntry> Key { get; set; }
        public ItemEntry Result { get; set; }

        [Newtonsoft.Json.JsonExtensionData]
        public Dictionary<string,JToken> Additionals { get; set; }
    }

}
