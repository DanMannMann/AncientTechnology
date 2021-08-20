# power if a player is standing on it
scoreboard players set @s soulp_powered 0
execute store success score @s soulp_powered as @e[type=player,limit=1,distance=0..0.5] run time query gametime
execute if score @s soulp_powered matches 1 run setblock ~ ~ ~ stone_pressure_plate[powered=true]
execute if score @s soulp_powered matches 1 run scoreboard players set @s soulp_count 0

# set display depending if player is standing on it
execute if score @s soulp_powered matches 1 run data modify entity @s Item.tag.CustomModelData set value 96001

# if player is not standing on it, count up and turn off after 20 ticks
execute if score @s soulp_powered matches 0 if block ~ ~ ~ stone_pressure_plate[powered=true] if score @s soulp_count matches 0..19 run scoreboard players add @s soulp_count 1
execute if score @s soulp_powered matches 0 if block ~ ~ ~ stone_pressure_plate[powered=true] if score @s soulp_count matches 20 run setblock ~ ~ ~ redstone_wire
execute if score @s soulp_powered matches 0 if block ~ ~ ~ redstone_wire if score @s soulp_count matches 20 run data modify entity @s Item.tag.CustomModelData set value 96000
execute if score @s soulp_powered matches 0 if block ~ ~ ~ redstone_wire if score @s soulp_count matches 20 run scoreboard players set @s soulp_count 0