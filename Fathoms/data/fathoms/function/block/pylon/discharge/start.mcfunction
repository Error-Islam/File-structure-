playsound fathoms:block.pylon.discharge block @a[distance=..8] ~ ~ ~ 0.5

execute positioned ~ ~ ~1 if block ~ ~ ~ #thallium:not_solid run particle minecraft:flash ~ ~ ~
execute positioned ~ ~ ~-1 if block ~ ~ ~ #thallium:not_solid run particle minecraft:flash ~ ~ ~
execute positioned ~1 ~ ~ if block ~ ~ ~ #thallium:not_solid run particle minecraft:flash ~ ~ ~
execute positioned ~-1 ~ ~ if block ~ ~ ~ #thallium:not_solid run particle minecraft:flash ~ ~ ~
execute positioned ~ ~1 ~ if block ~ ~ ~ #thallium:not_solid run particle minecraft:flash ~ ~ ~
execute positioned ~ ~-1 ~ if block ~ ~ ~ #thallium:not_solid run particle minecraft:flash ~ ~ ~

data remove storage fathoms:temp root
data modify storage fathoms:temp root.uuid set from entity @s UUID

execute as @a[distance=..4,gamemode=!creative,gamemode=!spectator] run function fathoms:block/pylon/discharge/macro with storage fathoms:temp root