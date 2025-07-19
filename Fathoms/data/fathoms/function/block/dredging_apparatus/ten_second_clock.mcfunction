execute unless entity @s[tag=!fathoms.block.dredging_apparatus.moving,tag=fathoms.block.dredging_apparatus.valid_dredging_spot,tag=!fathoms.block.dredging_apparatus.has_item] run return fail

execute store result score #fathoms.finish_time fathoms.dummy run scoreboard players get @s fathoms.entity
execute store result score #fathoms.current_time fathoms.dummy run time query gametime
execute if score #fathoms.current_time fathoms.dummy > #fathoms.finish_time fathoms.dummy run function fathoms:block/dredging_apparatus/set_state/has_item