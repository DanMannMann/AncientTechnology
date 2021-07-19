## Ancient Technology

Ancient Technology is a data pack for vanilla Minecraft (1.17+) which adds blocks and items mostly aimed at technical players/redstoners, and which (I hope) are quite balanced and in the spirit of vanilla survival gameplay.

### The Ancient Forge
A custom crafting table, the Ancient Forge, is the entry point for Ancient Technology's items. It can be used to craft - or, rather, forge - other custom items and blocks included in the pack. The Ancient Forge is data driven, which means other data pack authors can add their recipes to it with a simple `data modify` command. For example the following command adds the recipe for the Ancient Automaton to the Ancient Forge.

> `data modify storage ancient_technology:forge data.recipes append value {slot1:{id:"minecraft:lapis_block"},slot2:{id:"minecraft:diamond"},slot3:{id:"minecraft:lapis_block"},slot4:{id:"minecraft:redstone_block"},slot5:{id:"minecraft:crafting_table"},slot6:{id:"minecraft:redstone_block"},slot7:{id:"minecraft:lapis_block"},slot8:{id:"minecraft:iron_block"},slot9:{id:"minecraft:lapis_block"},result1:{id:"minecraft:glow_item_frame", Count: 1b, tag:{CustomModelData:80085,display:{Name:"{\"text\":\"Ancient Automaton\"}"},EntityTag:{Silent:1b,Tags:["ancient_automaton"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:80085}},Invulnerable:1b,Invisible:1b,Fixed:1b}}}}`

As long as other data packs run their `data modify` commands _after_ Ancient Technology is loaded, their recipes will appear on all Forges placed from then on. Already-placed Forges could be broken and re-placed to pick up any newly added recipes. Unused ingredient slots and result slots should be omitted, but obviously at least one ingredient and result should be included! Note that the Forge allows for 1 to 3 result item types per recipe, each with their own count, and supports all types of tag/nbt data on the result items, making it hella more useful than regular recipe.json files in my opnion. :) One thing the Ancient Forge can't do is craft automatically. For that you need...

### The Ancient Automaton
The Ancient Automaton is the original idea that started me on this data pack project. It's a block which must be placed in a specific configuration - similar to how the parts of a golem must be placed in the right pattern - to create one of 3 different crafting automation systems, which can be fed by hand, by dropper or by hopper to automatically craft items.
- Crafting Automaton - a 3x1x3 block structure where each block represents one of the slots of a crafting table
- Waxing Automaton - a 2x1x1 block structure that can apply honeycombs to unwaxed copper items
- Tinting Automaton - a 2x1x1 block structure that can craft 2-ingredient dyeing recipes and dye-mixing recipes

### The Sender Chest/Eyes
The Sender Chest is a cool - but maybe _slightly_ over-powered - block that can be used to send items over any distance instantly (with costs and caveats attached!). The fuel for a sending items between a pair of Sender Chests is a pair of items called Eye of Origin and Eye of Destination. They're forged in pairs (or equal-sized stacks of pairs), where each craft gets a unique "key number". When an origin eye and destination eye are each inserted into a different Sender Chest at the same time, the items in the origin are sent to the destination, and the eyes are consumed.

### The Ancient Anthology
A set of 6 written books providing in-game documentation for all the features of Ancient Technology.


### Acknowledgements
There's no way I could've thrown this together in 3 weeks if I hadn't ~~ripped some people off~~ stood on the shoulders of the Minecraft command community's giants.

- Timber Forge on youtube - I learned this whole way of doing custom blocks from his vids, they're indispensible. https://www.youtube.com/channel/UC606Jh3yjNj40dcVuMwtUCw
- radiish/TheSethskiGamer - the person who developed the "ilmango's crafting tables" autocrafting data pack. I learned how to make custom GUIs that don't suck from that pack. My GUIs would suck without that knowledge. I also realise this pack is kinda doing the same thing theirs does (and they were here first!), but the differences between their timing/order based approach and my 3x3/fun-with-minecarts approach are big enough that I don't think any toes are stepped on. Theirs is a great pack and you should play with it!
