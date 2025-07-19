tag @s add fathoms.entity.kelpie.persistent
tag @s add fathoms.entity.kelpie.dried

attribute @s minecraft:movement_speed modifier remove fathoms:entity.kelpie
attribute @s minecraft:jump_strength modifier remove fathoms:entity.kelpie
attribute @s minecraft:max_health modifier remove fathoms:entity.kelpie

attribute @s minecraft:movement_speed modifier add fathoms:entity.kelpie 0.025 add_value
attribute @s minecraft:jump_strength modifier add fathoms:entity.kelpie 0.025 add_value
attribute @s minecraft:max_health modifier add fathoms:entity.kelpie 0.25 add_multiplied_total

item modify entity @s saddle fathoms:entity/set_state/kelpie/dried/default

data modify entity @s data.fathoms.dried set value 1b

playsound fathoms:entity.kelpie.dry neutral @a[distance=..16]
particle minecraft:lava ~ ~1 ~ 0.5 0.5 0.5 0 10
particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.05 10