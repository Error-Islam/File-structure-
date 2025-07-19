playsound fathoms:entity.augur.discharge hostile @a[distance=..16] ~ ~ ~

attribute @s minecraft:movement_speed modifier add fathoms:entity.augur.discharge -1 add_value
data remove entity @s Motion
data modify entity @s equipment.head.components."minecraft:custom_model_data".strings append value "discharging"