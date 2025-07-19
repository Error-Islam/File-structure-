scoreboard players set #fathoms.temp fathoms.dummy 0

execute unless entity @n[type=minecraft:item_display,tag=smithed.block,distance=..0.99] run scoreboard players set #fathoms.temp fathoms.dummy 1

execute if score #fathoms.temp fathoms.dummy matches 0 run function fathoms:block/nautilus_siphon/place/fail
execute if score #fathoms.temp fathoms.dummy matches 1 run function fathoms:block/nautilus_siphon/place/succeed

setblock ~ ~ ~ air

execute if block ~1 ~ ~ #fathoms:in_water run setblock ~ ~ ~ minecraft:water
execute if block ~-1 ~ ~ #fathoms:in_water run setblock ~ ~ ~ minecraft:water
execute if block ~ ~ ~1 #fathoms:in_water run setblock ~ ~ ~ minecraft:water
execute if block ~ ~ ~-1 #fathoms:in_water run setblock ~ ~ ~ minecraft:water