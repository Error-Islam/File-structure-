advancement grant @s only fathoms:nautical/cut_fish
execute if score #fathoms.fish_cut fathoms.dummy matches 2 run advancement grant @s only fathoms:nautical/cut_aberration
function thallium:item/technical/durability/mainhand/damage

scoreboard players add @s fathoms.statistics.fish_chopped 1