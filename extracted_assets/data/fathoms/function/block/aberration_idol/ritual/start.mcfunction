scoreboard players set #fathoms.should_consume_item fathoms.dummy 1

playsound fathoms:block.aberration_idol.commit block @a[distance=..16] ~ ~ ~ 1
particle minecraft:squid_ink ^ ^ ^0.5 0 0 0 0.05 10
scoreboard players set @s fathoms.entity 100
data remove entity @s item.components."minecraft:custom_model_data".strings[1]
tag @s add fathoms.block.aberration_idol.committing

execute store result score #fathoms.essence.total fathoms.dummy run data get entity @s item.components."minecraft:custom_data".fathoms.essences.total
execute store result score #fathoms.essence.aberration fathoms.dummy run data get entity @s item.components."minecraft:custom_data".fathoms.essences.aberration
execute store result score #fathoms.essence.solstice fathoms.dummy run data get entity @s item.components."minecraft:custom_data".fathoms.essences.solstice
execute store result score #fathoms.essence.eclipse fathoms.dummy run data get entity @s item.components."minecraft:custom_data".fathoms.essences.eclipse
execute store result score #fathoms.essence.felicity fathoms.dummy run data get entity @s item.components."minecraft:custom_data".fathoms.essences.felicity
execute store result score #fathoms.essence.mass fathoms.dummy run data get entity @s item.components."minecraft:custom_data".fathoms.essences.mass
execute store result score #fathoms.essence.cunning fathoms.dummy run data get entity @s item.components."minecraft:custom_data".fathoms.essences.cunning
execute store result score #fathoms.essence.stamina fathoms.dummy run data get entity @s item.components."minecraft:custom_data".fathoms.essences.stamina
execute store result score #fathoms.essence.vibrance fathoms.dummy run data get entity @s item.components."minecraft:custom_data".fathoms.essences.vibrance
execute store result score #fathoms.essence.abyssal fathoms.dummy run data get entity @s item.components."minecraft:custom_data".fathoms.essences.abyssal

data modify entity @s item.components."minecraft:custom_data".fathoms.function_as_idol set value "fathoms:block/aberration_idol/ritual/invoke/invalid/as_idol"
data modify entity @s item.components."minecraft:custom_data".fathoms.function_as_player set value "fathoms:block/aberration_idol/ritual/invoke/invalid/as_player"

# Ocean
execute if score #fathoms.essence.total fathoms.dummy matches 2 if score #fathoms.essence.felicity fathoms.dummy matches 2 run function fathoms:block/aberration_idol/ritual/invoke/rite_of_fortune/prepare
execute if score #fathoms.essence.total fathoms.dummy matches 3 if score #fathoms.essence.solstice fathoms.dummy matches 0 if score #fathoms.essence.eclipse fathoms.dummy matches 1.. if score #fathoms.essence.felicity fathoms.dummy matches 1 if score #fathoms.essence.cunning fathoms.dummy matches 2 run function fathoms:block/aberration_idol/ritual/invoke/rain_dance/prepare
execute if score #fathoms.essence.total fathoms.dummy matches 2 if score #fathoms.essence.mass fathoms.dummy matches 2 run function fathoms:block/aberration_idol/ritual/invoke/charm_of_butchery/prepare
execute if score #fathoms.essence.total fathoms.dummy matches 3 if score #fathoms.essence.solstice fathoms.dummy matches 1.. if score #fathoms.essence.eclipse fathoms.dummy matches 0 if score #fathoms.essence.mass fathoms.dummy matches 1 if score #fathoms.essence.stamina fathoms.dummy matches 2 run function fathoms:block/aberration_idol/ritual/invoke/morph_steed/prepare

# Rocky Waters
execute if score #fathoms.essence.total fathoms.dummy matches 4 if score #fathoms.essence.solstice fathoms.dummy matches 1.. if score #fathoms.essence.eclipse fathoms.dummy matches 0 if score #fathoms.essence.felicity fathoms.dummy matches 2 if score #fathoms.essence.mass fathoms.dummy matches 1 if score #fathoms.essence.cunning fathoms.dummy matches 1 run function fathoms:block/aberration_idol/ritual/invoke/divine_gift/prepare
execute if score #fathoms.essence.total fathoms.dummy matches 4 if score #fathoms.essence.solstice fathoms.dummy matches 0 if score #fathoms.essence.eclipse fathoms.dummy matches 1.. if score #fathoms.essence.mass fathoms.dummy matches 2 if score #fathoms.essence.cunning fathoms.dummy matches 1 if score #fathoms.essence.stamina fathoms.dummy matches 1 run function fathoms:block/aberration_idol/ritual/invoke/conjure_beasts/prepare

data modify entity @s item.components."minecraft:custom_data".fathoms.uuid set from storage fathoms:temp root.uuid

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:candle[lit=false,candles=1] replace minecraft:candle[lit=true,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:candle[lit=false,candles=2] replace minecraft:candle[lit=true,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:candle[lit=false,candles=3] replace minecraft:candle[lit=true,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:candle[lit=false,candles=4] replace minecraft:candle[lit=true,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:white_candle[lit=false,candles=1] replace minecraft:white_candle[lit=true,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:white_candle[lit=false,candles=2] replace minecraft:white_candle[lit=true,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:white_candle[lit=false,candles=3] replace minecraft:white_candle[lit=true,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:white_candle[lit=false,candles=4] replace minecraft:white_candle[lit=true,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:light_gray_candle[lit=false,candles=1] replace minecraft:light_gray_candle[lit=true,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:light_gray_candle[lit=false,candles=2] replace minecraft:light_gray_candle[lit=true,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:light_gray_candle[lit=false,candles=3] replace minecraft:light_gray_candle[lit=true,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:light_gray_candle[lit=false,candles=4] replace minecraft:light_gray_candle[lit=true,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:gray_candle[lit=false,candles=1] replace minecraft:gray_candle[lit=true,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:gray_candle[lit=false,candles=2] replace minecraft:gray_candle[lit=true,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:gray_candle[lit=false,candles=3] replace minecraft:gray_candle[lit=true,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:gray_candle[lit=false,candles=4] replace minecraft:gray_candle[lit=true,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:black_candle[lit=false,candles=1] replace minecraft:black_candle[lit=true,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:black_candle[lit=false,candles=2] replace minecraft:black_candle[lit=true,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:black_candle[lit=false,candles=3] replace minecraft:black_candle[lit=true,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:black_candle[lit=false,candles=4] replace minecraft:black_candle[lit=true,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:brown_candle[lit=false,candles=1] replace minecraft:brown_candle[lit=true,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:brown_candle[lit=false,candles=2] replace minecraft:brown_candle[lit=true,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:brown_candle[lit=false,candles=3] replace minecraft:brown_candle[lit=true,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:brown_candle[lit=false,candles=4] replace minecraft:brown_candle[lit=true,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:red_candle[lit=false,candles=1] replace minecraft:red_candle[lit=true,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:red_candle[lit=false,candles=2] replace minecraft:red_candle[lit=true,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:red_candle[lit=false,candles=3] replace minecraft:red_candle[lit=true,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:red_candle[lit=false,candles=4] replace minecraft:red_candle[lit=true,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:orange_candle[lit=false,candles=1] replace minecraft:orange_candle[lit=true,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:orange_candle[lit=false,candles=2] replace minecraft:orange_candle[lit=true,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:orange_candle[lit=false,candles=3] replace minecraft:orange_candle[lit=true,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:orange_candle[lit=false,candles=4] replace minecraft:orange_candle[lit=true,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:yellow_candle[lit=false,candles=1] replace minecraft:yellow_candle[lit=true,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:yellow_candle[lit=false,candles=2] replace minecraft:yellow_candle[lit=true,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:yellow_candle[lit=false,candles=3] replace minecraft:yellow_candle[lit=true,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:yellow_candle[lit=false,candles=4] replace minecraft:yellow_candle[lit=true,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:lime_candle[lit=false,candles=1] replace minecraft:lime_candle[lit=true,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:lime_candle[lit=false,candles=2] replace minecraft:lime_candle[lit=true,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:lime_candle[lit=false,candles=3] replace minecraft:lime_candle[lit=true,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:lime_candle[lit=false,candles=4] replace minecraft:lime_candle[lit=true,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:green_candle[lit=false,candles=1] replace minecraft:green_candle[lit=true,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:green_candle[lit=false,candles=2] replace minecraft:green_candle[lit=true,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:green_candle[lit=false,candles=3] replace minecraft:green_candle[lit=true,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:green_candle[lit=false,candles=4] replace minecraft:green_candle[lit=true,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:cyan_candle[lit=false,candles=1] replace minecraft:cyan_candle[lit=true,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:cyan_candle[lit=false,candles=2] replace minecraft:cyan_candle[lit=true,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:cyan_candle[lit=false,candles=3] replace minecraft:cyan_candle[lit=true,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:cyan_candle[lit=false,candles=4] replace minecraft:cyan_candle[lit=true,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:light_blue_candle[lit=false,candles=1] replace minecraft:light_blue_candle[lit=true,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:light_blue_candle[lit=false,candles=2] replace minecraft:light_blue_candle[lit=true,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:light_blue_candle[lit=false,candles=3] replace minecraft:light_blue_candle[lit=true,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:light_blue_candle[lit=false,candles=4] replace minecraft:light_blue_candle[lit=true,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:blue_candle[lit=false,candles=1] replace minecraft:blue_candle[lit=true,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:blue_candle[lit=false,candles=2] replace minecraft:blue_candle[lit=true,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:blue_candle[lit=false,candles=3] replace minecraft:blue_candle[lit=true,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:blue_candle[lit=false,candles=4] replace minecraft:blue_candle[lit=true,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:purple_candle[lit=false,candles=1] replace minecraft:purple_candle[lit=true,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:purple_candle[lit=false,candles=2] replace minecraft:purple_candle[lit=true,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:purple_candle[lit=false,candles=3] replace minecraft:purple_candle[lit=true,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:purple_candle[lit=false,candles=4] replace minecraft:purple_candle[lit=true,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:magenta_candle[lit=false,candles=1] replace minecraft:magenta_candle[lit=true,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:magenta_candle[lit=false,candles=2] replace minecraft:magenta_candle[lit=true,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:magenta_candle[lit=false,candles=3] replace minecraft:magenta_candle[lit=true,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:magenta_candle[lit=false,candles=4] replace minecraft:magenta_candle[lit=true,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:pink_candle[lit=false,candles=1] replace minecraft:pink_candle[lit=true,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:pink_candle[lit=false,candles=2] replace minecraft:pink_candle[lit=true,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:pink_candle[lit=false,candles=3] replace minecraft:pink_candle[lit=true,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:pink_candle[lit=false,candles=4] replace minecraft:pink_candle[lit=true,candles=4]