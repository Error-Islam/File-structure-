execute store result score #fathoms.essence.stamina fathoms.dummy run data get entity @s item.components."minecraft:custom_data".fathoms.essences.stamina
scoreboard players add #fathoms.essence.stamina fathoms.dummy 1
execute store result entity @s item.components."minecraft:custom_data".fathoms.essences.stamina int 1 run scoreboard players get #fathoms.essence.stamina fathoms.dummy

execute if data storage fathoms:temp root{essences:["aberration"]} run return fail
$particle minecraft:trail{color:[0.906,0.800,0.776],target:[$(end_x),$(end_y),$(end_z)],duration:30} ~ ~ ~ 0.25 0.25 0.25 0 3
$particle minecraft:trail{color:[0.906,0.800,0.776],target:[$(end_x),$(end_y),$(end_z)],duration:40} ~ ~ ~ 0.25 0.25 0.25 0 3
$particle minecraft:trail{color:[0.906,0.800,0.776],target:[$(end_x),$(end_y),$(end_z)],duration:50} ~ ~ ~ 0.25 0.25 0.25 0 3