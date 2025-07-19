execute if entity @s[tag=fathoms.block.coffer.opening] run return run data remove entity @s attack

playsound minecraft:block.deepslate.hit block @a[distance=..16]
execute as @n[type=minecraft:item_display,tag=fathoms.block.coffer] run function fathoms:block/coffer/break/hit/as_display

scoreboard players add @s fathoms.entity 10
execute if score @s fathoms.entity matches 21.. run function fathoms:block/coffer/break/start

data remove entity @s attack