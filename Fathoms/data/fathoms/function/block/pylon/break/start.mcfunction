scoreboard players reset #fathoms.should_discharge fathoms.dummy
execute as @n[distance=..4,type=minecraft:item,nbt={Age:0s}] run function fathoms:block/pylon/break/as_item
execute if score #fathoms.should_discharge fathoms.dummy matches 1 run function fathoms:block/pylon/discharge/start

kill @s