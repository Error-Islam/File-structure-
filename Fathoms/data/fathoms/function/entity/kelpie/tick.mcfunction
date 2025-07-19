execute if predicate thallium:random_chance/50 unless predicate thallium:location_check/fluid/water if entity @s[tag=fathoms.entity.kelpie.dried] run particle minecraft:flame ~ ~1 ~ 0.35 0.35 0.35 0 1

execute if predicate thallium:entity_properties/hurt/true if entity @s[tag=!fathoms.entity.hurt] run function fathoms:entity/kelpie/hurt/start
execute if predicate thallium:entity_properties/hurt/false if entity @s[tag=fathoms.entity.hurt] run function fathoms:entity/kelpie/hurt/stop

attribute @s minecraft:gravity modifier remove fathoms:entity.kelpie.swimming

execute unless predicate thallium:entity_properties/has_passenger run return fail

execute unless predicate thallium:location_check/fluid/water if predicate thallium:entity_properties/walking if entity @s[tag=!fathoms.entity.kelpie.dried] run particle minecraft:mycelium ~ ~0.5 ~ 0 0.25 0 0 3
execute unless predicate thallium:location_check/fluid/water run return fail

execute if predicate thallium:entity_properties/walking run particle minecraft:bubble ~ ~0.5 ~ 0 0.25 0 0 1

execute if predicate fathoms:entity_properties/passenger/kelpie/down run attribute @s minecraft:gravity modifier add fathoms:entity.kelpie.swimming 0.5 add_value
execute if predicate fathoms:entity_properties/passenger/kelpie/up run attribute @s minecraft:gravity modifier add fathoms:entity.kelpie.swimming -1.5 add_value