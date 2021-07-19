# AS AT POSITION of custom item frame
setblock ~ ~ ~ minecraft:barrel{CustomName:"\"Miyagitron\""}
playsound minecraft:block.metal.place block @a[distance=0..5] ~ ~ ~ 1 1.2 1
particle minecraft:wax_on ~ ~ ~ 0 0 0 9 100
tag @s add placed