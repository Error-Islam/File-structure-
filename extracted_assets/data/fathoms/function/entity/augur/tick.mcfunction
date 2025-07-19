execute unless predicate thallium:location_check/fluid/water unless entity @s[tag=fathoms.entity.augur.beached] run function fathoms:entity/augur/set_state/beached
execute if predicate thallium:location_check/fluid/water if entity @s[tag=fathoms.entity.augur.beached] run function fathoms:entity/augur/set_state/default

execute unless predicate fathoms:entity_properties/targeted_entity/augur_target run return fail
execute unless predicate thallium:location_check/fluid/water run return fail

scoreboard players add @s fathoms.entity 1
execute if score @s fathoms.entity matches 1..50 if predicate thallium:random_chance/50 run scoreboard players add @s fathoms.entity 1
execute if score @s fathoms.entity matches 60 run function fathoms:entity/augur/discharge/start
execute if score @s fathoms.entity matches 60.. run function fathoms:entity/augur/discharge/tick
execute if score @s fathoms.entity matches 100.. run function fathoms:entity/augur/discharge/end