scoreboard players set #fathoms.should_consume_item fathoms.dummy 0
scoreboard players set #fathoms.has_tell_tale_heart fathoms.dummy 0
scoreboard players set #fathoms.ritual_success fathoms.dummy 0

execute on target run function fathoms:block/aberration_idol/interaction/as_player

execute as @n[type=minecraft:item_display,tag=fathoms.block.aberration_idol] unless entity @s[tag=fathoms.block.aberration_idol.committing] at @s run function fathoms:block/aberration_idol/ritual/check

execute if score #fathoms.ritual_success fathoms.dummy matches ..0 on target run function fathoms:block/aberration_idol/interaction/error

execute on target if score #fathoms.should_consume_item fathoms.dummy matches 1 run item modify entity @s[gamemode=!creative] weapon.mainhand thallium:count/remove_1

data remove entity @s interaction