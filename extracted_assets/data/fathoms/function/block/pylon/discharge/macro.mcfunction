$execute unless predicate thallium:location_check/fluid/water run damage @s 10 fathoms:pylon by @n[distance=..4,type=minecraft:item_display,tag=fathoms.block.pylon,nbt={UUID:$(uuid)}]
$execute if predicate thallium:location_check/fluid/water run damage @s 15 fathoms:pylon by @n[distance=..4,type=minecraft:item_display,tag=fathoms.block.pylon,nbt={UUID:$(uuid)}]

execute at @s run particle minecraft:firework ~ ~1 ~ 0.15 0.15 0.15 0.1 3