execute store result score #fathoms.essence.aberration fathoms.dummy run data get entity @s item.components."minecraft:custom_data".fathoms.essences.aberration
scoreboard players add #fathoms.essence.aberration fathoms.dummy 1
execute store result entity @s item.components."minecraft:custom_data".fathoms.essences.aberration int 1 run scoreboard players get #fathoms.essence.aberration fathoms.dummy

$particle minecraft:trail{color:[0.612,0.784,0.686],target:[$(end_x),$(end_y),$(end_z)],duration:30} ~ ~ ~ 0.25 0.25 0.25 0 3
$particle minecraft:trail{color:[0.612,0.784,0.686],target:[$(end_x),$(end_y),$(end_z)],duration:40} ~ ~ ~ 0.25 0.25 0.25 0 3
$particle minecraft:trail{color:[0.612,0.784,0.686],target:[$(end_x),$(end_y),$(end_z)],duration:50} ~ ~ ~ 0.25 0.25 0.25 0 3