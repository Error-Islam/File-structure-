scoreboard players set #fathoms.temp fathoms.dummy 0

execute unless entity @n[type=minecraft:item_display,tag=smithed.block,distance=..0.99] run scoreboard players set #fathoms.temp fathoms.dummy 1

execute if score #fathoms.temp fathoms.dummy matches 0 run function fathoms:block/aberration_idol/place/fail
execute if score #fathoms.temp fathoms.dummy matches 1 run function fathoms:block/aberration_idol/place/macro with block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".thallium.block