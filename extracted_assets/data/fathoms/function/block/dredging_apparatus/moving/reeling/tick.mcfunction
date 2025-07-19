scoreboard players add @s fathoms.entity_secondary 1
execute unless entity @s[tag=fathoms.block.dredging_apparatus.has_item] run scoreboard players add @s fathoms.entity_secondary 1
execute if score @s fathoms.entity_secondary matches 8.. run function fathoms:block/dredging_apparatus/moving/reeling/step