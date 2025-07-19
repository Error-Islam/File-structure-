$function $(function)

execute store result score #fathoms.temp fathoms.dummy run data get entity @s data.fathoms.ritual.time
scoreboard players remove #fathoms.temp fathoms.dummy 1
execute unless score #fathoms.temp fathoms.dummy matches 1.. run return run function fathoms:block/aberration_idol/ritual/active/deactivate
execute store result entity @s data.fathoms.ritual.time int 1 run scoreboard players get #fathoms.temp fathoms.dummy

playsound fathoms:block.aberration_idol.ambient block @a[distance=..8] ~ ~ ~ 0.5