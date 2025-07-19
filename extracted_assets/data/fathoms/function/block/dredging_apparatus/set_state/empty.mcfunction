execute at @s facing entity @p[tag=fathoms.temp.target] eyes run loot spawn ^ ^ ^1 loot {"pools": [{"rolls": 1,"entries": [{"type": "minecraft:item","name": "minecraft:poisonous_potato","functions": [{"function": "minecraft:set_custom_data","tag": "{fathoms:{to_be_replaced:1b}}"},{"function": "minecraft:set_components","components": {"minecraft:item_model": "fathoms:empty"}}]}]}]}
data modify entity @n[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{fathoms:{to_be_replaced:1b}}}}}] Item set from entity @s data.fathoms.stored_item

data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "default"
data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "empty"
data remove entity @s data.fathoms.stored_item

tag @s remove fathoms.block.dredging_apparatus.has_item

scoreboard players set #fathoms.item_taken fathoms.dummy 1

playsound fathoms:block.dredging_apparatus.release block @a[distance=..16]