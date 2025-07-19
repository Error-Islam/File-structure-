execute store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625

execute store success score #fathoms.temp fathoms.dummy at @s run fillbiome ~ 38 ~ ~16 80 ~16 fathoms:rocky_waters
execute if score #fathoms.temp fathoms.dummy matches 0 run tag @s remove thallium.processed
execute if score #fathoms.temp fathoms.dummy matches 1 run kill @s