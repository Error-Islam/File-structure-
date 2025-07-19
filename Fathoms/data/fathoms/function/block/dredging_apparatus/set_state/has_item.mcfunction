playsound fathoms:block.dredging_apparatus.hook block @a[distance=..16]

loot spawn ~ ~ ~ loot fathoms:gameplay/dredging
execute as @n[type=minecraft:item,distance=..3,nbt={Age:0s}] run function fathoms:block/nautilus_siphon/catch/as_item
data modify entity @s data.fathoms.stored_item set from storage fathoms:temp root.item
data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "holding"
data modify entity @s item.components."minecraft:custom_model_data".strings[1] set from storage fathoms:temp root.item.id
data modify entity @s item.components."minecraft:custom_model_data".strings[1] set from storage fathoms:temp root.item.components."minecraft:custom_data".fathoms.id

tag @s add fathoms.block.dredging_apparatus.has_item

scoreboard players reset @s fathoms.entity