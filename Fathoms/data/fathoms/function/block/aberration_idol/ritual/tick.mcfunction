execute if score @s fathoms.entity matches 20 run function fathoms:block/aberration_idol/ritual/invoke with entity @s item.components."minecraft:custom_data".fathoms
execute if score @s fathoms.entity matches 60 run data modify entity @s item.components."minecraft:custom_model_data".strings append value active
execute if score @s fathoms.entity matches 60 run playsound fathoms:block.aberration_idol.charge block @a[distance=..16]
scoreboard players remove @s fathoms.entity 1

execute unless score @s fathoms.entity matches 30..60 run return fail
data remove storage fathoms:temp root
data modify storage fathoms:temp root.end_x set from entity @s Pos[0]
data modify storage fathoms:temp root.end_y set from entity @s Pos[1]
data modify storage fathoms:temp root.end_z set from entity @s Pos[2]
function fathoms:block/aberration_idol/ritual/particle with storage fathoms:temp root