using Newtonsoft.Json.Linq;
using System.Collections.Generic;

namespace Autocrafter.RecipeParser
{
    public class Tag
    {
        public bool Replace { get; set; }
        public List<string> Values { get; set; }

        [Newtonsoft.Json.JsonExtensionData]
        public Dictionary<string, JToken> Additionals { get; set; }
    }

}
