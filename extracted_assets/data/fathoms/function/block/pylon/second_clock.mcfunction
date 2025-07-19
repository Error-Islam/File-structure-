scoreboard players remove @s fathoms.entity 1
execute if score @s fathoms.entity matches 1 run playsound fathoms:block.pylon.warn block @a[distance=..16] ~ ~ ~ 1
execute if score @s fathoms.entity matches 0 if entity @a[distance=..4,gamemode=!creative,gamemode=!spectator] run function fathoms:block/pylon/discharge/start

execute unless score @s fathoms.entity matches 1.. store result score @s fathoms.entity run random value 10..30