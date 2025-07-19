playsound fathoms:block.nautilus_siphon.empty block @a[distance=..8] ~ ~ ~ 0.5

execute store result score #fathoms.temp fathoms.dummy run data get entity @s Rotation[0]

data modify storage fathoms:temp root.item set from entity @s item.components."minecraft:custom_data".fathoms.stored_items[0]

execute positioned ^ ^ ^0.75 run summon minecraft:item ~ ~-0.5 ~ {Tags:["fathoms.entity.marker_item"],Item:{id:"minecraft:stone"}}
execute as @n[type=item,tag=fathoms.entity.marker_item] run function fathoms:block/nautilus_siphon/eject/as_item

data remove entity @s item.components."minecraft:custom_data".fathoms.stored_items[0]
scoreboard players remove @s fathoms.entity 1
execute store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players get @s fathoms.entity