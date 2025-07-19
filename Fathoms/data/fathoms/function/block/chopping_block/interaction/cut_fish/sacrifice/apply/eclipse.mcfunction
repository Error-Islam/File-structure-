execute store result score #fathoms.essence.eclipse fathoms.dummy run data get entity @s item.components."minecraft:custom_data".fathoms.essences.eclipse
scoreboard players add #fathoms.essence.eclipse fathoms.dummy 1
execute store result entity @s item.components."minecraft:custom_data".fathoms.essences.eclipse int 1 run scoreboard players get #fathoms.essence.eclipse fathoms.dummy