scoreboard players reset #fathoms.error fathoms.dummy
execute as @n[type=minecraft:horse,distance=..16,tag=!smithed.entity,nbt={Tame:1b}] at @s run function fathoms:entity/kelpie/transform/start

execute if score #fathoms.error fathoms.dummy matches 1 run particle minecraft:splash ~ ~ ~ 0.35 0.25 0.35 0 7
execute if score #fathoms.error fathoms.dummy matches 1 run playsound fathoms:block.aberration_idol.end.bubble block @a[distance=..16] ~ ~ ~

execute unless score #fathoms.error fathoms.dummy matches 1 run function fathoms:block/aberration_idol/ritual/eject_heart