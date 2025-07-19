data remove storage fathoms:temp root
data modify storage fathoms:temp root.particle set from entity @s item.components."minecraft:custom_model_data".strings[0]
function fathoms:block/chopping_block/break/particle with storage fathoms:temp root

execute if entity @s[tag=fathoms.block.chopping_block.has_fish] run loot spawn ~ ~-0.5 ~ loot {"pools": [{"rolls": 1,"entries": [{"type": "minecraft:item","name": "minecraft:poisonous_potato","functions": [{"function": "minecraft:set_custom_data","tag": "{fathoms:{to_be_replaced:1b}}"},{"function": "minecraft:set_components","components": {"minecraft:item_model": "fathoms:empty"}}]}]}]}
execute if entity @s[tag=fathoms.block.chopping_block.has_fish] run data modify entity @n[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{fathoms:{to_be_replaced:1b}}}}}] Item set from entity @s item.components."minecraft:custom_data".fathoms.stored_item

kill @s

loot spawn ~ ~ ~ loot fathoms:blocks/chopping_block