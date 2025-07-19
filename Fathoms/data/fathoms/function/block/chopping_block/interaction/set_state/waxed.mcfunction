particle minecraft:wax_on ~ ~-0.25 ~ 0.25 0.25 0.25 0.25 5
playsound minecraft:item.honeycomb.wax_on block @a[distance=..8] ~ ~ ~

tag @s add fathoms.block.chopping_block.waxed

scoreboard players set #fathoms.should_consume_item fathoms.dummy 1
scoreboard players set #fathoms.waxed fathoms.dummy 1