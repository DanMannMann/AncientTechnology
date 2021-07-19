using System.Collections.Generic;
using System.Linq;

namespace Autocrafter.RecipeParser
{
    public class AutocrafterSlot
    {
        public AutocrafterSlot(int slotNumber)
        {
            SlotNumber = slotNumber;
        }

        public int SlotNumber { get; }
        public string PrimaryItem => Items?.FirstOrDefault();
        public List<string> Items { get; } = new List<string>();
        public bool Used => Items.Any();
        public override string ToString()
        {
            return Used ? PrimaryItem : "X";
        }
    }

}
