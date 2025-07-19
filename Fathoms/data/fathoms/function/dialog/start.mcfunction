dialog clear @s
execute if score @s _fathoms.menu matches 1 run dialog show @s fathoms:root
execute if score @s _fathoms.menu matches 2 run function fathoms:dialog/statistics/index

scoreboard players reset @s _fathoms.menu
scoreboard players enable @s _fathoms.menu