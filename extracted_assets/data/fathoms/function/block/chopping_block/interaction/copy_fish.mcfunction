loot spawn ~ ~-0.5 ~ loot {"pools": [{"rolls": 1,"entries": [{"type": "minecraft:item","name": "minecraft:poisonous_potato","functions": [{"function": "minecraft:set_custom_data","tag": "{fathoms:{to_be_replaced:1b}}"},{"function": "minecraft:set_components","components": {"minecraft:item_model": "fathoms:empty"}}]}]}]}
data modify entity @n[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{fathoms:{to_be_replaced:1b}}}}}] Item set from entity @s item.components."minecraft:custom_data".fathoms.stored_item

playsound fathoms:item.fish.flop block @a[distance=..16] ~ ~ ~ 1
particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0 3