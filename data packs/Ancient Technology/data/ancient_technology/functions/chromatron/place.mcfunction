# AS AT POSITION of custom item frame
setblock ~ ~ ~ minecraft:dropper{CustomName:"\"Chromatron\""}
playsound minecraft:block.metal.place block @a[distance=0..5] ~ ~ ~ 1 1.2 1
particle minecraft:witch ~ ~ ~ 0 0 0 9 100
tag @s add placed
execute as @s at @s run function ancient_technology:chromatron/set_blockers