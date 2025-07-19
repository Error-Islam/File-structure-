scoreboard players add @s fathoms.entity_secondary 1
execute if predicate fathoms:random_chance/50 run scoreboard players add @s fathoms.entity_secondary 1
execute if score @s fathoms.entity_secondary matches 450.. run function fathoms:block/nautilus_siphon/catch/finish

execute if predicate fathoms:random_chance/10 positioned ~ ~-0.35 ~ run particle minecraft:bubble ^ ^ ^0.75 0 0 0 0 1