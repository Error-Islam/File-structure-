playsound minecraft:block.decorated_pot.hit block @a[distance=..16]
particle minecraft:item{item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"fathoms:nautilus_siphon"}}} ~ ~ ~ 0.25 0.25 0.25 0.05 3

scoreboard players add @s fathoms.entity 10
execute if score @s fathoms.entity matches 21.. run function fathoms:block/nautilus_siphon/break/start

data remove entity @s attack