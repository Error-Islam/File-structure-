$loot spawn ~ ~0.5 ~ loot $(common_loot_table)
execute positioned ~ ~0.35 ~ as @n[type=minecraft:item,distance=..2,nbt={Age:0s}] run function fathoms:block/coffer/open/eject/as_item