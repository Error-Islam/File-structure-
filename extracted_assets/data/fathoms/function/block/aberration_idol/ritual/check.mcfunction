execute if score #fathoms.has_tell_tale_heart fathoms.dummy matches 0 run scoreboard players set #fathoms.ritual_success fathoms.dummy -2
execute unless data entity @s item.components."minecraft:custom_data".fathoms.essences run scoreboard players set #fathoms.ritual_success fathoms.dummy -1
execute if score #fathoms.has_tell_tale_heart fathoms.dummy matches 1 if data entity @s item.components."minecraft:custom_data".fathoms.essences run scoreboard players set #fathoms.ritual_success fathoms.dummy 1

execute if score #fathoms.ritual_success fathoms.dummy matches 1 run function fathoms:block/aberration_idol/ritual/start