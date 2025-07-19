tag @s remove fathoms.block.dredging_apparatus.top

execute store result score #fathoms.custom_model_data fathoms.dummy run data get entity @s item.components."minecraft:custom_model_data".floats[0] 10
scoreboard players add #fathoms.custom_model_data fathoms.dummy 5
execute store result entity @s item.components."minecraft:custom_model_data".floats[0] float 0.1 run scoreboard players get #fathoms.custom_model_data fathoms.dummy
execute store result score #fathoms.offset fathoms.dummy run data get entity @s transformation.translation[1] 10
scoreboard players remove #fathoms.offset fathoms.dummy 5
execute store result entity @s transformation.translation[1] float 0.1 run scoreboard players get #fathoms.offset fathoms.dummy
data remove storage fathoms:temp root
execute store result storage fathoms:temp root.value float 0.1 run scoreboard players get #fathoms.custom_model_data fathoms.dummy
execute at @s positioned ^ ^-1 ^1 run function fathoms:block/dredging_apparatus/moving/lowering/macro with storage fathoms:temp root

playsound fathoms:block.dredging_apparatus.lower block @a[distance=..8] ~ ~ ~ 0.5

scoreboard players reset @s fathoms.entity_secondary

execute if score #fathoms.custom_model_data fathoms.dummy matches 240.. run function fathoms:block/dredging_apparatus/moving/lowering/stop

# tellraw @a {nbt:"root.value",storage:"fathoms:temp"}