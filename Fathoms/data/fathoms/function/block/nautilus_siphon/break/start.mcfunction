playsound minecraft:block.decorated_pot.break block @a[distance=..16]
particle minecraft:item{item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"fathoms:nautilus_siphon"}}} ~ ~ ~ 0.25 0.25 0.25 0.1 10

kill @s
kill @n[type=minecraft:item_display,tag=fathoms.block.nautilus_siphon]

loot spawn ~ ~ ~ loot fathoms:items/nautilus_siphon