execute store result score #fathoms.essence.vibrance fathoms.dummy run data get entity @s item.components."minecraft:custom_data".fathoms.essences.vibrance
scoreboard players add #fathoms.essence.vibrance fathoms.dummy 1
execute store result entity @s item.components."minecraft:custom_data".fathoms.essences.vibrance int 1 run scoreboard players get #fathoms.essence.vibrance fathoms.dummy

execute if data storage fathoms:temp root{essences:["aberration"]} run return fail
$particle minecraft:trail{color:[0.871,0.835,0.290],target:[$(end_x),$(end_y),$(end_z)],duration:30} ~ ~ ~ 0.25 0.25 0.25 0 2
$particle minecraft:trail{color:[0.871,0.835,0.290],target:[$(end_x),$(end_y),$(end_z)],duration:40} ~ ~ ~ 0.25 0.25 0.25 0 2
$particle minecraft:trail{color:[0.871,0.835,0.290],target:[$(end_x),$(end_y),$(end_z)],duration:50} ~ ~ ~ 0.25 0.25 0.25 0 2
$particle minecraft:trail{color:[0.000,0.855,0.855],target:[$(end_x),$(end_y),$(end_z)],duration:30} ~ ~ ~ 0.25 0.25 0.25 0 1
$particle minecraft:trail{color:[0.000,0.855,0.855],target:[$(end_x),$(end_y),$(end_z)],duration:40} ~ ~ ~ 0.25 0.25 0.25 0 1
$particle minecraft:trail{color:[0.000,0.855,0.855],target:[$(end_x),$(end_y),$(end_z)],duration:50} ~ ~ ~ 0.25 0.25 0.25 0 1