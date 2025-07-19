loot spawn ~ ~-0.5 ~ loot {"pools": [{"rolls": 1,"entries": [{"type": "minecraft:item","name": "minecraft:poisonous_potato","functions": [{"function": "minecraft:set_custom_data","tag": "{fathoms:{to_be_replaced:1b}}"},{"function": "minecraft:set_components","components": {"minecraft:item_model": "fathoms:empty"}}]}]}]}
data modify entity @n[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{fathoms:{to_be_replaced:1b}}}}}] Item set from entity @s item.components."minecraft:custom_data".fathoms.stored_item

data remove entity @s item.components."minecraft:custom_model_data".strings[1]
data remove entity @s item.components."minecraft:custom_data".fathoms.stored_item

tag @s remove fathoms.block.chopping_block.has_fish
tag @s remove fathoms.block.chopping_block.has_aberration
tag @s remove fathoms.block.chopping_block.tough_shell
tag @s add fathoms.block.chopping_block.empty

scoreboard players set #fathoms.has_changed_state fathoms.dummy 1

playsound fathoms:item.fish.flop block @a[distance=..16] ~ ~ ~ 1 1.5
particle minecraft:splash ~ ~-0.15 ~ 0.15 0 0.25 0 2