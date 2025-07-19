execute if score @s fathoms.entity matches 1.. run scoreboard players remove @s fathoms.entity 1

execute if block ~ ~-0.25 ~ #fathoms:not_solid run return run function fathoms:block/chopping_block/break/start
execute unless block ~ ~0.25 ~ #fathoms:not_solid run return run function fathoms:block/chopping_block/break/start