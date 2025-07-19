execute if entity @s[type=minecraft:drowned] if biome ~ ~ ~ fathoms:rocky_waters run function fathoms:entity/technical/processing/spawning/augur

execute if entity @s[tag=fathoms.postgen,type=minecraft:marker] run function fathoms:entity/technical/postgen/start