using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Autocrafter.RecipeParser
{
    public class ItemEntryConverter : JsonConverter<ItemEntry>
    {
        public override ItemEntry ReadJson(JsonReader reader, Type objectType, ItemEntry existingValue, bool hasExistingValue, JsonSerializer serializer)
        {
            var token = JToken.Load(reader);
            try
            {
                var singleItemEntry = token.ToObject<SingleItemEntry>();
                return new ItemEntry { Items = new List<string> { singleItemEntry.Item }, Tags = new List<string> { singleItemEntry.Tag }, Count = singleItemEntry.Count };
            }
            catch
            {
                try
                {
                    return token.ToObject<ItemEntry>();
                }
                catch
                {
                    // No need to worry about count here, we check for multiple results and throw above. if that ever starts throwing, we need to sort this out.
                    var singleItemEntries = token.ToObject<SingleItemEntry[]>();
                    return new ItemEntry { Items = singleItemEntries.Select(x => x.Item).ToList(), Tags = singleItemEntries.Select(x => x.Tag).ToList() };
                }
            }
        }

        public override void WriteJson(JsonWriter writer, ItemEntry value, JsonSerializer serializer)
        {
            throw new NotImplementedException();
        }
    }

}
