particle minecraft:squid_ink ~ ~0.05 ~ 0.2 0 0.2 0.025 3
playsound fathoms:item.fish.sacrifice block @a[distance=..16]

data remove storage fathoms:temp root
data modify storage fathoms:temp root.essences set from entity @s item.components."minecraft:custom_data".fathoms.stored_item.components."minecraft:custom_data".fathoms.fish.essences

execute as @n[type=minecraft:item_display,tag=fathoms.block.aberration_idol,distance=..10] unless entity @s[tag=fathoms.block.aberration_idol.committing] run function fathoms:block/chopping_block/interaction/cut_fish/sacrifice/as_aberration_idol