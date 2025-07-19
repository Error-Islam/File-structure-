scoreboard players set #fathoms.increased_bonus_drops fathoms.dummy 0
scoreboard players set #fathoms.drops_tell_tale_heart fathoms.dummy 0
execute if data entity @s item.components."minecraft:custom_data".fathoms.stored_item.components."minecraft:custom_data".fathoms.fish{essences:["felicity"]} run scoreboard players set #fathoms.increased_bonus_drops fathoms.dummy 1
execute if data entity @s item.components."minecraft:custom_data".fathoms.stored_item.components."minecraft:custom_data".fathoms.fish{essences:["aberration"]} run scoreboard players set #fathoms.drops_tell_tale_heart fathoms.dummy 1
execute unless score #fathoms.should_cut_fish fathoms.dummy matches 3 run function fathoms:block/chopping_block/interaction/cut_fish/macro with entity @s item.components."minecraft:custom_data".fathoms.stored_item.components."minecraft:custom_data".fathoms.fish

execute unless score #fathoms.should_cut_fish fathoms.dummy matches 3 if score #fathoms.drops_tell_tale_heart fathoms.dummy matches 1 run loot spawn ~ ~-0.5 ~ loot fathoms:items/tell_tale_heart
execute unless score #fathoms.should_cut_fish fathoms.dummy matches 3 if data entity @s item.components."minecraft:custom_data".fathoms.stored_item.components."minecraft:custom_data".fathoms{id:"volt_eel"} run function fathoms:block/chopping_block/interaction/cut_fish/special/volt_eel
execute unless score #fathoms.should_cut_fish fathoms.dummy matches 3 if data entity @s item.components."minecraft:custom_data".fathoms.stored_item.components."minecraft:custom_data".fathoms{id:"radiant_tilapia"} run function fathoms:block/chopping_block/interaction/cut_fish/special/radiant_tilapia

execute if score #fathoms.should_cut_fish fathoms.dummy matches 1 run playsound fathoms:item.fish.chop block @a[distance=..16]
execute if score #fathoms.should_cut_fish fathoms.dummy matches 2 run playsound fathoms:item.fish.cut block @a[distance=..16]

execute if score #fathoms.should_cut_fish fathoms.dummy matches 2.. unless entity @s[tag=fathoms.block.chopping_block.has_aberration] run particle minecraft:item{item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"fathoms:fish_fillet"}}} ~ ~-0.25 ~ 0 0 0 0.05 10
execute if score #fathoms.should_cut_fish fathoms.dummy matches 2.. if entity @s[tag=fathoms.block.chopping_block.has_aberration] run particle minecraft:item{item:"minecraft:rotten_flesh"} ~ ~-0.25 ~ 0 0 0 0.05 10
execute if score #fathoms.should_cut_fish fathoms.dummy matches 1 unless entity @s[tag=fathoms.block.chopping_block.has_aberration] run particle minecraft:item{item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"fathoms:fish_fillet"}}} ~ ~-0.25 ~ 0 0 0 0.15 10
execute if score #fathoms.should_cut_fish fathoms.dummy matches 1 if entity @s[tag=fathoms.block.chopping_block.has_aberration] run particle minecraft:item{item:"minecraft:rotten_flesh"} ~ ~-0.25 ~ 0 0 0 0.15 10
particle minecraft:splash ~ ~-0.15 ~ 0.15 0 0.25 0 2

execute if score #fathoms.should_cut_fish fathoms.dummy matches 3 run function fathoms:block/chopping_block/interaction/cut_fish/sacrifice/start

data remove entity @s item.components."minecraft:custom_model_data".strings[1]
data remove entity @s item.components."minecraft:custom_data".fathoms.stored_item

execute if entity @s[tag=fathoms.block.chopping_block.has_fish] run scoreboard players set #fathoms.fish_cut fathoms.dummy 1
execute if entity @s[tag=fathoms.block.chopping_block.has_aberration] run scoreboard players set #fathoms.fish_cut fathoms.dummy 2

tag @s remove fathoms.block.chopping_block.has_fish
tag @s remove fathoms.block.chopping_block.has_aberration
tag @s remove fathoms.block.chopping_block.tough_shell
tag @s add fathoms.block.chopping_block.empty

scoreboard players set #fathoms.has_changed_state fathoms.dummy 1