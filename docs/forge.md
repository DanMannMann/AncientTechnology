## The Ancient Forge

A custom crafting table, the Ancient Forge, is the entry point for Ancient Technology's items. It can be used to craft - or, rather, forge - other custom items and blocks included in the pack. The Ancient Forge is data driven, which means other data pack authors can add their recipes to it with a simple `data modify` command. 

### Adding 3rd party recipes
As an example, the following command (which is actually used in this pack's load.mcfunction script) adds the recipe for the Ancient Automaton to the Ancient Forge.

> `data modify storage ancient_technology:forge data.recipes append value {slot1:{id:"minecraft:lapis_block"},slot2:{id:"minecraft:diamond"},slot3:{id:"minecraft:lapis_block"},slot4:{id:"minecraft:redstone_block"},slot5:{id:"minecraft:crafting_table"},slot6:{id:"minecraft:redstone_block"},slot7:{id:"minecraft:lapis_block"},slot8:{id:"minecraft:iron_block"},slot9:{id:"minecraft:lapis_block"},result1:{id:"minecraft:glow_item_frame", Count: 1b, tag:{CustomModelData:80085,display:{Name:"{\"text\":\"Ancient Automaton\"}"},EntityTag:{Silent:1b,Tags:["ancient_automaton"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80085}},Invulnerable:1b,Invisible:1b,Fixed:1b}}}}`

As long as other data packs run their `data modify` commands _after_ Ancient Technology is loaded, their recipes will appear on all Forges placed from then on. Already-placed Forges could be broken and re-placed to pick up any newly added recipes. Unused ingredient slots and result slots should be omitted, but obviously at least one ingredient and result should be included! Note that the Forge allows for 1 to 3 result item types per recipe, each with their own count, and supports all types of tag/nbt data on the result items, making it hella more useful than regular recipe.json files in my opnion. :)

#### Crafting "Events"
As in the recipe below for the eyes of origin/destination, an "eventTag" can be specified for a recipe.

> `data modify storage ancient_technology:forge data.recipes append value {eventTag:"sender_eye_crafted", slot2:{id:"minecraft:ender_eye"},slot3:{id:"minecraft:redstone"},slot1:{id:"minecraft:redstone"},slot7:{id:"minecraft:lapis_lazuli"},slot8:{id:"minecraft:ender_eye"},slot9:{id:"minecraft:lapis_lazuli"},result1:{id:"minecraft:stick", Count: 1b, tag: {CustomModelData:90083,display:{Name:"{\"text\":\"Eye of Origin\"}"}}},result3:{id:"minecraft:stick", Count: 1b, tag:{CustomModelData:90084, display:{Name:"{\"text\":\"Eye of Destination\"}"}}}}`

This tag is added to the Ancient Forge glow_item_frame entity whenever this recipe is _previewed_ (i.e. when the items are added to the result slot, _before_ the player takes them). This tag can be used with a command such as the one below, in any script that runs via the tick tag, to run a function whenever the custom items are being created.

> `execute as @e[type=minecraft:glow_item_frame,tag=ancient_forge,tag=your_tag] at @s run function your_namespace:your_folder/your_function`

The function called by this command should include a line to remove the tag, like `tag @s remove your_tag`.

Note that since the tag is added when the items are previewed, the craft is not always "completed" after this tag is added. Therefore this tag shouldn't be used to keep track of or respond to players actually receiving/crafting items, only to provide additional logic to the creation of items which _might_ be crafted. The file [complete_craft.mcfunction](../data%20packs/Ancient%20Technology/data/ancient_technology/functions/sender_chest/complete_craft.mcfunction) provides an example of using this tag to replace placeholder result items with loot table generated results, which include scoreboard scores inserted into lore values and other advanced features only available via loot tables.

### Tech Notes
The ancient forge item overrides the default texture & name (via localisation override) of the Knowledge Book. This is to allow the Ancient Forge to appear as if it's a "real" block in the vanilla crafting table. This obviously messes with any other pack that relies on the knowledge book as an item crafting trigger. If there's a need to use a conflicting pack together with this one, perhaps the pack author or server admin could consider migrating the other pack's recipes to the Ancient Forge, as described above. ;)
