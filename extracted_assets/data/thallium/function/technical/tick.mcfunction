execute as @a at @s run function thallium:entity/player/tick

execute as @e[type=#thallium:should_tick,tag=thallium.tick] at @s run function thallium:entity/technical/tick/tick

data remove storage thallium:temp macro