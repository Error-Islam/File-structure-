data remove storage fathoms:temp root
data modify storage fathoms:temp root.particle set from entity @s item.components."minecraft:custom_model_data".strings[0]
function fathoms:block/coffer/open/break/particle with storage fathoms:temp root

execute if data entity @s item.components."minecraft:custom_model_data"{strings:["tarnished"]} run playsound fathoms:block.coffer.crumble_wood block @a[distance=..16] ~ ~ ~
execute if data entity @s item.components."minecraft:custom_model_data"{strings:["caliginous"]} run playsound fathoms:block.coffer.crumble_stone block @a[distance=..16] ~ ~ ~

kill @s
kill @n[type=minecraft:interaction,tag=fathoms.block.coffer_interaction]

setblock ~ ~ ~ minecraft:air