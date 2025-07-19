playsound fathoms:block.dredging_apparatus.enter_water block @a[distance=..16] ~ ~ ~
particle minecraft:splash ~ ~ ~ 0.25 0 0.25 0.1 10

tag @s add fathoms.block.dredging_apparatus.valid_dredging_spot

execute if score @s fathoms.entity matches 1.. run return fail
execute store result score @s fathoms.entity run time query gametime
execute store result score #fathoms.added_time fathoms.dummy run random value 12000..24000
scoreboard players operation @s fathoms.entity += #fathoms.added_time fathoms.dummy