particle minecraft:splash ~ ~ ~ 0.25 0.25 0.25 0 10
playsound fathoms:block.aberration_idol.end.bubble block @a[distance=..16] ~ ~ ~

execute if score #fathoms.essence.aberration fathoms.dummy matches 0 run weather rain 6000
execute if score #fathoms.essence.aberration fathoms.dummy matches 1 run weather rain 12000
execute if score #fathoms.essence.aberration fathoms.dummy matches 2 run weather rain 18000
execute if score #fathoms.essence.aberration fathoms.dummy matches 3 run weather thunder 12000