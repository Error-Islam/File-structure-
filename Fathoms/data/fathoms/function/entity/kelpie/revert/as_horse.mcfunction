data modify entity @s Bred set from storage fathoms:temp root.entity.Bred
data modify entity @s Owner set from storage fathoms:temp root.entity.Owner
data modify entity @s Variant set from storage fathoms:temp root.entity.Variant
data modify entity @s attributes set from storage fathoms:temp root.entity.attributes
data modify entity @s Age set from storage fathoms:temp root.entity.Age
data modify entity @s active_effects set from storage fathoms:temp root.entity.active_effects
data modify entity @s Rotation set from storage fathoms:temp root.entity.Rotation
data modify entity @s Variant set from storage fathoms:temp root.entity.data.fathoms.horse.Variant
data modify entity @s drop_chances set from storage fathoms:temp root.entity.data.fathoms.horse.drop_chances
data modify entity @s DeathLootTable set from storage fathoms:temp root.entity.data.fathoms.horse.DeathLootTable
data modify entity @s Tame set value 1b
execute unless data storage fathoms:temp root.entity{CustomName:{"translate":"entity.fathoms.kelpie"}} run data modify entity @s CustomName set from storage fathoms:temp root.entity.CustomName
data remove entity @s data.fathoms

attribute @s minecraft:armor modifier remove fathoms:entity.kelpie
attribute @s minecraft:armor_toughness modifier remove fathoms:entity.kelpie
attribute @s minecraft:movement_speed modifier remove fathoms:entity.kelpie
attribute @s minecraft:jump_strength modifier remove fathoms:entity.kelpie
attribute @s minecraft:max_health modifier remove fathoms:entity.kelpie
attribute @s minecraft:water_movement_efficiency modifier remove fathoms:entity.kelpie
attribute @s minecraft:scale modifier remove fathoms:entity.kelpie

tag @s add thallium.processed

effect give @s minecraft:nausea 30