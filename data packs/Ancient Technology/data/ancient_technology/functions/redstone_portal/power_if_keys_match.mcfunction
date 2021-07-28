data modify entity @s Item.tag.comparand set from storage ancient_technology:rsportal comparand
scoreboard players set @s rsportal_compare 1
execute store result score @s rsportal_compare run data modify entity @s Item.tag.comparand set from entity @s Item.tag.rx_key
execute if score @s rsportal_compare matches 0 run tag @s add powered