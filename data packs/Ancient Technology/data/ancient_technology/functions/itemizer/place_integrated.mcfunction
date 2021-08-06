# note this stays AT the target block but AS the placing player
execute as @p[limit=1,sort=nearest] run function ancient_technology:itemizer/place_item_display

setblock ~ ~ ~ minecraft:heavy_weighted_pressure_plate[power=0]{powered: false}

playsound minecraft:block.metal.place block @a[distance=0..5] ~ ~ ~ 1 1.2 1

execute if entity @s[tag=north] run data modify entity @s ItemRotation set value 0
execute if entity @s[tag=east] run data modify entity @s ItemRotation set value 2
execute if entity @s[tag=south] run data modify entity @s ItemRotation set value 4
execute if entity @s[tag=west] run data modify entity @s ItemRotation set value 6

tag @s add placed
