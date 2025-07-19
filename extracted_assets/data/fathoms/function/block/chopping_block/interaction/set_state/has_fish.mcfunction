$data modify entity @s item.components."minecraft:custom_model_data".strings append value $(id)
data modify entity @s item.components."minecraft:custom_data".fathoms.stored_item set from storage fathoms:temp root.item
data modify entity @s item.components."minecraft:custom_data".fathoms.stored_item.count set value 1

tag @s remove fathoms.block.chopping_block.empty
execute if data storage fathoms:temp root.item.components."minecraft:custom_data".fathoms.fish{essences:["aberration"]} run tag @s add fathoms.block.chopping_block.has_aberration
execute if data storage fathoms:temp root.item.components."minecraft:custom_data".fathoms.fish{tough_shell:1b} run tag @s add fathoms.block.chopping_block.tough_shell
tag @s add fathoms.block.chopping_block.has_fish

scoreboard players set #fathoms.has_changed_state fathoms.dummy 1
scoreboard players set #fathoms.should_consume_item fathoms.dummy 1

playsound fathoms:item.fish.flop block @a[distance=..16]
particle minecraft:splash ~ ~-0.15 ~ 0.15 0 0.25 0 2