scoreboard players set #fathoms.should_consume_item fathoms.dummy 0
scoreboard players set #fathoms.has_changed_state fathoms.dummy 0
scoreboard players set #fathoms.error fathoms.dummy 0
scoreboard players set #fathoms.should_cut_fish fathoms.dummy 0
scoreboard players set #fathoms.used_ornate_cleaver fathoms.dummy 0
scoreboard players set #fathoms.fish_cut fathoms.dummy 0
scoreboard players set #fathoms.waxed fathoms.dummy 0
scoreboard players set #fathoms.copy_fish fathoms.dummy 0

execute on target run function fathoms:block/chopping_block/interaction/as_player

execute as @n[type=minecraft:item_display,tag=fathoms.block.chopping_block] run function fathoms:block/chopping_block/interaction/set_state/start

execute on target if score #fathoms.should_consume_item fathoms.dummy matches 1 run item modify entity @s[gamemode=!creative] weapon.mainhand thallium:count/remove_1
execute on target if score #fathoms.waxed fathoms.dummy matches 1 run advancement grant @s only fathoms:nautical/wax_fish

execute if score #fathoms.fish_cut fathoms.dummy matches 1.. on target run function fathoms:block/chopping_block/interaction/cut_fish/as_player
execute if score #fathoms.error fathoms.dummy matches 1 on target run title @s actionbar {"translate":"ui.fathoms.chopping_block.error.tough_shell1","with":[{"translate":"ui.fathoms.chopping_block.error.tough_shell2","color":"yellow"}]}

data remove entity @s interaction