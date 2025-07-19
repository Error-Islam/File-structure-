function fathoms:entity/augur/discharge/end

attribute @s minecraft:movement_speed modifier add fathoms:entity.augur.beached -1 add_value
data modify entity @s equipment.head.components."minecraft:custom_model_data".strings append value "beached"

tag @s add fathoms.entity.augur.beached