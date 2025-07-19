playsound minecraft:block.deepslate.break block @a[distance=..16]

kill @s
execute as @n[type=minecraft:item_display,tag=fathoms.block.coffer] run function fathoms:block/coffer/break/as_display

setblock ~ ~ ~ minecraft:air