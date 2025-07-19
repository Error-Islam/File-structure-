scoreboard players reset #fathoms.item_taken fathoms.dummy
execute on target run tag @s add fathoms.temp.target

execute as @n[type=minecraft:item_display,tag=fathoms.block.dredging_apparatus] at @s run function fathoms:block/dredging_apparatus/set_state/start

execute on target run tag @s remove fathoms.temp.target
execute if score #fathoms.item_taken fathoms.dummy matches 1 on target run advancement grant @s only fathoms:nautical/dredging_apparatus
execute if score #fathoms.item_taken fathoms.dummy matches 1 on target run scoreboard players add @s fathoms.statistics.items_dredged 1

data remove entity @s interaction