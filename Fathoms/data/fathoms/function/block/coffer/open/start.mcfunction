playsound fathoms:block.coffer.open block @a[distance=..16] ~ ~ ~
execute at @s run particle minecraft:crit ^ ^ ^0.55 0.1 0.1 0.1 0.05 3
particle minecraft:dust_plume ~ ~0.35 ~ 0.15 0.1 0.15 0 5
data modify entity @s item.components."minecraft:custom_model_data".strings append value open

tag @s add fathoms.block.coffer.opening
scoreboard players set @s fathoms.entity 55

scoreboard players set #fathoms.should_consume_item fathoms.dummy 1