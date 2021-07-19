# replace any crafted forge item with a real one
execute as @a[nbt={Inventory:[{id: "minecraft:knowledge_book"}]}] run function ancient_technology:ancient_forge/crafted

# note the actual crafting is handled behind a check of __crafting_tick in the tick_gui function, for efficiency