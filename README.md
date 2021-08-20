## Ancient Technology

Ancient Technology is a data pack for vanilla Minecraft (1.17+) which adds blocks and items mostly aimed at technical players/redstoners, and which (I hope) are quite balanced and in the spirit of vanilla survival gameplay. It should also have reasonable performance, at least in as far as complex data packs can.

[demo video (youtube)](https://www.youtube.com/watch?v=QAfEJk2XjuU)
[Redstone Portals demo video (youtube)](https://youtu.be/PuYXKb1xIK4)

### [The Ancient Forge](docs/forge.md)
A custom crafting table, the Ancient Forge, is the entry point for Ancient Technology's items. It can be used to craft - or, rather, forge - other custom items and blocks included in the pack. The Ancient Forge is data driven, which means other data pack authors can add their recipes to it with a simple `data modify` command. 

One thing the Ancient Forge can't do is craft automatically. For that you need...

### [The Ancient Automaton](docs/automaton.md)
The Ancient Automaton is the original idea that started me on this data pack project. It's a block which must be placed in a specific configuration - similar to how the parts of a golem must be placed in the right pattern - to create one of 3 different crafting automation systems.

### [The Sender Chest & Eyes of Origin/Destination](docs/sender.md)
The Sender Chest is a cool - but maybe _slightly_ over-powered - block that can be used to send items over any distance instantly (with costs and caveats attached!)

### Redstone Portals
The redstone portals can be used to transmit a wireless redstone signal. They are crafted in pairs or stacks of matched pairs, and different matched sets don't interfere with each other so you can have multiple wireless circuits in the same area.

### The Itemizer
The Itemizer is like a comparator, except it only counts/detects the presence of a player-specified type of item. This is very useful for building unstackable item sorters.

### The Soul Plate
The Soul Plate is a pressure plate which only detects the presence of players. This is useful for protecting entrances from mobs and animals wandering in.

### The Ancient Anthology
A set of 6 written books providing in-game documentation for all the features of Ancient Technology.


### Roadmap and state of play
I'd say the currently added features are pretty much 100% code complete and seem totally stable/reasonably performant. There'll be bugs to fix, no doubt, but the next thing I add (if anything) will probably be another new block type.

That's as far as code is concerned. As for art... Ugh. I suck at it. All the block textures are kinda frankensteined together from vanilla textures. If anybody wants to help out with some sexier textures I'm so totally up for that so much that it hurts my face.

### Acknowledgements
There's no way I could've thrown this together in 3 weeks if I hadn't ~~ripped some people off~~ stood on the shoulders of the Minecraft command community's giants.

- Timber Forge on youtube - I learned this whole way of doing custom blocks from his vids, they're indispensible. https://www.youtube.com/channel/UC606Jh3yjNj40dcVuMwtUCw
- radiish/TheSethskiGamer - the person who developed the "ilmango's crafting tables" autocrafting data pack. I learned how to make custom GUIs from that pack. My GUIs would suck without that knowledge. I also realise this pack is kinda doing the same thing theirs does (and they were here first!), but the differences between their timing/order based approach and my 3x3/fun-with-minecarts approach are big enough that I don't think any toes are stepped on. Theirs is a great pack and you should play with it! https://github.com/istanbul-not-constantinople/minecraft-autocrafting-datapack fwiw I didn't re-use (or even really look at) any of that pack's crafting code - it works in a very different way to this pack, obviously.
