execute store result score #fathoms.essence.abyssal fathoms.dummy run data get entity @s item.components."minecraft:custom_data".fathoms.essences.abyssal
scoreboard players add #fathoms.essence.abyssal fathoms.dummy 1
execute store result entity @s item.components."minecraft:custom_data".fathoms.essences.abyssal int 1 run scoreboard players get #fathoms.essence.abyssal fathoms.dummy

execute if data storage fathoms:temp root{essences:["aberration"]} run return fail
$particle minecraft:trail{color:[0.133,0.408,0.969],target:[$(end_x),$(end_y),$(end_z)],duration:30} ~ ~ ~ 0.25 0.25 0.25 0 3
$particle minecraft:trail{color:[0.133,0.408,0.969],target:[$(end_x),$(end_y),$(end_z)],duration:40} ~ ~ ~ 0.25 0.25 0.25 0 3
$particle minecraft:trail{color:[0.133,0.408,0.969],target:[$(end_x),$(end_y),$(end_z)],duration:50} ~ ~ ~ 0.25 0.25 0.25 0 3