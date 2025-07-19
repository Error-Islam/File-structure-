execute store result score #fathoms.essence.solstice fathoms.dummy run data get entity @s item.components."minecraft:custom_data".fathoms.essences.solstice
scoreboard players add #fathoms.essence.solstice fathoms.dummy 1
execute store result entity @s item.components."minecraft:custom_data".fathoms.essences.solstice int 1 run scoreboard players get #fathoms.essence.solstice fathoms.dummy