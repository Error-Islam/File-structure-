execute if score @s fathoms.entity matches 1.. run scoreboard players remove @s fathoms.entity 1

execute if entity @s[tag=fathoms.block.coffer.opening] run return run data remove entity @s attack
execute if block ~ ~-0.25 ~ #fathoms:not_solid run return run function fathoms:block/coffer/break/start
execute unless block ~ ~0.25 ~ minecraft:barrier run return run function fathoms:block/coffer/break/start