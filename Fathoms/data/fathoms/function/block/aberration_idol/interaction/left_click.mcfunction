playsound minecraft:block.deepslate.hit block @a[distance=..16]
execute as @n[type=minecraft:item_display,tag=fathoms.block.aberration_idol] run function fathoms:block/aberration_idol/break/hit/as_display

scoreboard players add @s fathoms.entity 10
execute if score @s fathoms.entity matches 21.. run function fathoms:block/aberration_idol/break/start

data remove entity @s attack