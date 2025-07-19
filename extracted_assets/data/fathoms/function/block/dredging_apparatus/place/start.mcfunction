scoreboard players set #fathoms.temp fathoms.dummy 0

execute unless entity @n[type=minecraft:item_display,tag=smithed.block,distance=..0.99] if block ~ ~1 ~ #thallium:air run scoreboard players set #fathoms.temp fathoms.dummy 1

execute if score #fathoms.temp fathoms.dummy matches 0 run function fathoms:block/dredging_apparatus/place/fail
execute if score #fathoms.temp fathoms.dummy matches 1 run function fathoms:block/dredging_apparatus/place/succeed

playsound minecraft:block.iron.place block @a[distance=..16]