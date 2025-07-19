playsound minecraft:block.iron.hit block @a[distance=..16]
particle minecraft:item{item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"fathoms:dredging_apparatus"}}} ~ ~ ~ 0.25 0.25 0.25 0.05 3

scoreboard players add @s fathoms.entity 10
execute if score @s fathoms.entity matches 21.. run function fathoms:block/dredging_apparatus/break/start

data remove entity @s attack