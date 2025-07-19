playsound fathoms:block.nautilus_siphon.catch block @a[distance=..8] ~ ~ ~ 0.5
execute positioned ~ ~-0.35 ~ run particle minecraft:bubble ^ ^ ^0.85 0.25 0.25 0.25 0 5

scoreboard players add @s fathoms.entity 1
scoreboard players reset @s fathoms.entity_secondary

execute store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players get @s fathoms.entity

loot spawn ~ ~ ~ loot fathoms:gameplay/nautilus_siphon
execute as @n[type=minecraft:item,distance=..3,nbt={Age:0s}] run function fathoms:block/nautilus_siphon/catch/as_item
data modify entity @s item.components."minecraft:custom_data".fathoms.stored_items append from storage fathoms:temp root.item