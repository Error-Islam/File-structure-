playsound minecraft:block.metal.break block @a[distance=..16]

kill @s
execute as @n[type=minecraft:item_display,tag=fathoms.block.chopping_block] run function fathoms:block/chopping_block/break/as_display