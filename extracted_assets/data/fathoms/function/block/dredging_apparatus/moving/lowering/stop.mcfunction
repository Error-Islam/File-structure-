tag @s remove fathoms.block.dredging_apparatus.lowering
tag @s remove fathoms.block.dredging_apparatus.moving
tag @s add fathoms.block.dredging_apparatus.bottom

scoreboard players reset #fathoms.custom_model_data fathoms.dummy

execute at @s run playsound fathoms:block.dredging_apparatus.hit_bottom block @a[distance=..16]