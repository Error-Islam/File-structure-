playsound minecraft:block.metal.hit block @a[distance=..16]
execute as @n[type=minecraft:item_display,tag=fathoms.block.chopping_block] run function fathoms:block/chopping_block/break/hit/as_display

scoreboard players add @s fathoms.entity 10
execute if score @s fathoms.entity matches 21.. run function fathoms:block/chopping_block/break/start

data remove entity @s attack