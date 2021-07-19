namespace Autocrafter.RecipeParser
{
    public class McFunctionFile
    {
        public ScriptDirectory Directory { get; set; }
        public string Name { get; set; }
        public string Body { get; set; }
        public string Path => $"{Directory?.Path}{Name}.mcfunction";
    }
}
