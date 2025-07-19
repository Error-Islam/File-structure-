scoreboard players set #fathoms.essence.total fathoms.dummy 0
scoreboard players set #fathoms.essence.aberration fathoms.dummy 0
scoreboard players set #fathoms.essence.solstice fathoms.dummy 0
scoreboard players set #fathoms.essence.eclipse fathoms.dummy 0
scoreboard players set #fathoms.essence.felicity fathoms.dummy 0
scoreboard players set #fathoms.essence.mass fathoms.dummy 0
scoreboard players set #fathoms.essence.cunning fathoms.dummy 0
scoreboard players set #fathoms.essence.abyssal fathoms.dummy 0

execute store result score #fathoms.essence.total fathoms.dummy run data get entity @s item.components."minecraft:custom_data".fathoms.essences.total
scoreboard players add #fathoms.essence.total fathoms.dummy 1
execute store result entity @s item.components."minecraft:custom_data".fathoms.essences.total int 1 run scoreboard players get #fathoms.essence.total fathoms.dummy

data modify storage fathoms:temp root.coordinates.end_x set from entity @s Pos[0]
data modify storage fathoms:temp root.coordinates.end_y set from entity @s Pos[1]
data modify storage fathoms:temp root.coordinates.end_z set from entity @s Pos[2]

execute if data storage fathoms:temp root{essences:["aberration"]} run function fathoms:block/chopping_block/interaction/cut_fish/sacrifice/apply/aberration with storage fathoms:temp root.coordinates
execute if data storage fathoms:temp root{essences:["solstice"]} run function fathoms:block/chopping_block/interaction/cut_fish/sacrifice/apply/solstice with storage fathoms:temp root.coordinates
execute if data storage fathoms:temp root{essences:["eclipse"]} run function fathoms:block/chopping_block/interaction/cut_fish/sacrifice/apply/eclipse with storage fathoms:temp root.coordinates
execute if data storage fathoms:temp root{essences:["felicity"]} run function fathoms:block/chopping_block/interaction/cut_fish/sacrifice/apply/felicity with storage fathoms:temp root.coordinates
execute if data storage fathoms:temp root{essences:["mass"]} run function fathoms:block/chopping_block/interaction/cut_fish/sacrifice/apply/mass with storage fathoms:temp root.coordinates
execute if data storage fathoms:temp root{essences:["cunning"]} run function fathoms:block/chopping_block/interaction/cut_fish/sacrifice/apply/cunning with storage fathoms:temp root.coordinates
execute if data storage fathoms:temp root{essences:["stamina"]} run function fathoms:block/chopping_block/interaction/cut_fish/sacrifice/apply/stamina with storage fathoms:temp root.coordinates
execute if data storage fathoms:temp root{essences:["vibrance"]} run function fathoms:block/chopping_block/interaction/cut_fish/sacrifice/apply/vibrance with storage fathoms:temp root.coordinates
execute if data storage fathoms:temp root{essences:["abyssal"]} run function fathoms:block/chopping_block/interaction/cut_fish/sacrifice/apply/abyssal with storage fathoms:temp root.coordinates