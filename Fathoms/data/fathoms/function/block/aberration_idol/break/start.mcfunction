playsound minecraft:block.deepslate.break block @a[distance=..16]

kill @s
execute as @n[type=minecraft:item_display,tag=fathoms.block.aberration_idol] run function fathoms:block/aberration_idol/break/as_display

setblock ~ ~ ~ minecraft:air