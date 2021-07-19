# AS AT POSITION of custom item frame
setblock ~ ~ ~ minecraft:barrel{CustomName:"\"Sender Chest\""}
playsound minecraft:block.metal.place block @a[distance=0..5] ~ ~ ~ 1 1.2 1
particle minecraft:end_rod ~ ~1 ~ 0 0 0 7 500
tag @s add placed