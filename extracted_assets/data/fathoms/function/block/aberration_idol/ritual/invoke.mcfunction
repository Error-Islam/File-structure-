tag @s remove fathoms.block.aberration_idol.committing

execute store result score #fathoms.essence.aberration fathoms.dummy run data get entity @s item.components."minecraft:custom_data".fathoms.essences.aberration

scoreboard players set #fathoms.success fathoms.dummy 1

tag @s remove fathoms.block.aberration_idol.active_effect
data remove entity @s data.fathoms.ritual

$function $(function_as_idol)
$execute as @p[nbt={UUID:$(uuid)}] at @s run function $(function_as_player)
$execute if score #fathoms.success fathoms.dummy matches 1.. as @p[nbt={UUID:$(uuid)}] run function fathoms:block/aberration_idol/ritual/as_player

data remove entity @s[tag=!fathoms.block.aberration_idol.active_effect] item.components."minecraft:custom_model_data".strings[1]

data remove entity @s item.components."minecraft:custom_data".fathoms

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:candle[lit=true,candles=1] replace minecraft:candle[lit=false,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:candle[lit=true,candles=2] replace minecraft:candle[lit=false,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:candle[lit=true,candles=3] replace minecraft:candle[lit=false,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:candle[lit=true,candles=4] replace minecraft:candle[lit=false,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:white_candle[lit=true,candles=1] replace minecraft:white_candle[lit=false,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:white_candle[lit=true,candles=2] replace minecraft:white_candle[lit=false,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:white_candle[lit=true,candles=3] replace minecraft:white_candle[lit=false,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:white_candle[lit=true,candles=4] replace minecraft:white_candle[lit=false,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:light_gray_candle[lit=true,candles=1] replace minecraft:light_gray_candle[lit=false,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:light_gray_candle[lit=true,candles=2] replace minecraft:light_gray_candle[lit=false,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:light_gray_candle[lit=true,candles=3] replace minecraft:light_gray_candle[lit=false,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:light_gray_candle[lit=true,candles=4] replace minecraft:light_gray_candle[lit=false,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:gray_candle[lit=true,candles=1] replace minecraft:gray_candle[lit=false,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:gray_candle[lit=true,candles=2] replace minecraft:gray_candle[lit=false,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:gray_candle[lit=true,candles=3] replace minecraft:gray_candle[lit=false,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:gray_candle[lit=true,candles=4] replace minecraft:gray_candle[lit=false,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:black_candle[lit=true,candles=1] replace minecraft:black_candle[lit=false,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:black_candle[lit=true,candles=2] replace minecraft:black_candle[lit=false,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:black_candle[lit=true,candles=3] replace minecraft:black_candle[lit=false,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:black_candle[lit=true,candles=4] replace minecraft:black_candle[lit=false,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:brown_candle[lit=true,candles=1] replace minecraft:brown_candle[lit=false,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:brown_candle[lit=true,candles=2] replace minecraft:brown_candle[lit=false,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:brown_candle[lit=true,candles=3] replace minecraft:brown_candle[lit=false,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:brown_candle[lit=true,candles=4] replace minecraft:brown_candle[lit=false,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:red_candle[lit=true,candles=1] replace minecraft:red_candle[lit=false,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:red_candle[lit=true,candles=2] replace minecraft:red_candle[lit=false,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:red_candle[lit=true,candles=3] replace minecraft:red_candle[lit=false,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:red_candle[lit=true,candles=4] replace minecraft:red_candle[lit=false,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:orange_candle[lit=true,candles=1] replace minecraft:orange_candle[lit=false,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:orange_candle[lit=true,candles=2] replace minecraft:orange_candle[lit=false,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:orange_candle[lit=true,candles=3] replace minecraft:orange_candle[lit=false,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:orange_candle[lit=true,candles=4] replace minecraft:orange_candle[lit=false,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:yellow_candle[lit=true,candles=1] replace minecraft:yellow_candle[lit=false,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:yellow_candle[lit=true,candles=2] replace minecraft:yellow_candle[lit=false,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:yellow_candle[lit=true,candles=3] replace minecraft:yellow_candle[lit=false,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:yellow_candle[lit=true,candles=4] replace minecraft:yellow_candle[lit=false,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:lime_candle[lit=true,candles=1] replace minecraft:lime_candle[lit=false,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:lime_candle[lit=true,candles=2] replace minecraft:lime_candle[lit=false,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:lime_candle[lit=true,candles=3] replace minecraft:lime_candle[lit=false,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:lime_candle[lit=true,candles=4] replace minecraft:lime_candle[lit=false,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:green_candle[lit=true,candles=1] replace minecraft:green_candle[lit=false,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:green_candle[lit=true,candles=2] replace minecraft:green_candle[lit=false,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:green_candle[lit=true,candles=3] replace minecraft:green_candle[lit=false,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:green_candle[lit=true,candles=4] replace minecraft:green_candle[lit=false,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:cyan_candle[lit=true,candles=1] replace minecraft:cyan_candle[lit=false,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:cyan_candle[lit=true,candles=2] replace minecraft:cyan_candle[lit=false,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:cyan_candle[lit=true,candles=3] replace minecraft:cyan_candle[lit=false,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:cyan_candle[lit=true,candles=4] replace minecraft:cyan_candle[lit=false,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:light_blue_candle[lit=true,candles=1] replace minecraft:light_blue_candle[lit=false,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:light_blue_candle[lit=true,candles=2] replace minecraft:light_blue_candle[lit=false,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:light_blue_candle[lit=true,candles=3] replace minecraft:light_blue_candle[lit=false,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:light_blue_candle[lit=true,candles=4] replace minecraft:light_blue_candle[lit=false,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:blue_candle[lit=true,candles=1] replace minecraft:blue_candle[lit=false,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:blue_candle[lit=true,candles=2] replace minecraft:blue_candle[lit=false,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:blue_candle[lit=true,candles=3] replace minecraft:blue_candle[lit=false,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:blue_candle[lit=true,candles=4] replace minecraft:blue_candle[lit=false,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:purple_candle[lit=true,candles=1] replace minecraft:purple_candle[lit=false,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:purple_candle[lit=true,candles=2] replace minecraft:purple_candle[lit=false,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:purple_candle[lit=true,candles=3] replace minecraft:purple_candle[lit=false,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:purple_candle[lit=true,candles=4] replace minecraft:purple_candle[lit=false,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:magenta_candle[lit=true,candles=1] replace minecraft:magenta_candle[lit=false,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:magenta_candle[lit=true,candles=2] replace minecraft:magenta_candle[lit=false,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:magenta_candle[lit=true,candles=3] replace minecraft:magenta_candle[lit=false,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:magenta_candle[lit=true,candles=4] replace minecraft:magenta_candle[lit=false,candles=4]

fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:pink_candle[lit=true,candles=1] replace minecraft:pink_candle[lit=false,candles=1]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:pink_candle[lit=true,candles=2] replace minecraft:pink_candle[lit=false,candles=2]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:pink_candle[lit=true,candles=3] replace minecraft:pink_candle[lit=false,candles=3]
fill ~-5 ~-5 ~5 ~5 ~5 ~-5 minecraft:pink_candle[lit=true,candles=4] replace minecraft:pink_candle[lit=false,candles=4]