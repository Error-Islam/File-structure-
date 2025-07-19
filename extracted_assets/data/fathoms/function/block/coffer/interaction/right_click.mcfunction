scoreboard players set #fathoms.should_consume_item fathoms.dummy 0

execute on target run function fathoms:block/coffer/interaction/as_player

execute as @n[type=minecraft:item_display,tag=fathoms.block.coffer] run function fathoms:block/coffer/open/check

execute on target if score #fathoms.should_consume_item fathoms.dummy matches 1 run item modify entity @s[gamemode=!creative] weapon.mainhand thallium:count/remove_1
execute on target if score #fathoms.should_consume_item fathoms.dummy matches 1 run advancement grant @s only fathoms:nautical/open_coffer
execute on target if score #fathoms.should_consume_item fathoms.dummy matches 1 run scoreboard players add @s fathoms.statistics.coffers_opened 1
execute if score #fathoms.should_consume_item fathoms.dummy matches 1 run tag @s add fathoms.block.coffer.opening

data remove entity @s interaction