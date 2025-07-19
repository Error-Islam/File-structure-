data remove storage fathoms:temp root

execute as @n[type=minecraft:item_display,tag=fathoms.block.nautilus_siphon] at @s run function fathoms:block/nautilus_siphon/eject/start

execute if data storage fathoms:temp root.advancement on target run function fathoms:block/nautilus_siphon/eject/advancement with storage fathoms:temp root.advancement

data remove entity @s interaction