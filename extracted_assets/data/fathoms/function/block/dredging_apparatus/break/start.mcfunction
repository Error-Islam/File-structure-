playsound minecraft:block.iron.break block @a[distance=..16]
particle minecraft:item{item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"fathoms:dredging_apparatus"}}} ~ ~ ~ 0.25 0.25 0.25 0.1 10

kill @s
execute as @n[type=minecraft:item_display,tag=fathoms.block.dredging_apparatus] run function fathoms:block/dredging_apparatus/break/as_display

loot spawn ~ ~ ~ loot fathoms:items/dredging_apparatus

fill ~ ~ ~ ~ ~1 ~ minecraft:air