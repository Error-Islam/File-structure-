data remove storage fathoms:temp root
data modify storage fathoms:temp root.uuid set from entity @s UUID

execute as @e[distance=..4,type=!#thallium:non_living,predicate=thallium:location_check/fluid/water,tag=!fathoms.entity.augur] run function fathoms:entity/augur/discharge/shock/macro with storage fathoms:temp root

scoreboard players reset @s fathoms.entity_secondary

particle minecraft:flash ~ ~1 ~