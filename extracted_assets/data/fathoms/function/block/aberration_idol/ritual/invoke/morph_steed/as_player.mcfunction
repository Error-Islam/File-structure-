execute unless score #fathoms.error fathoms.dummy matches 1 run title @s actionbar [{"text":"0 ","font":"fathoms:icon"},{"translate":"ui.fathoms.ritual.fail.no_tamed_horse","color":"#ff4d24","font":"minecraft:default"}]
execute if score #fathoms.error fathoms.dummy matches 1 run advancement grant @s only fathoms:nautical/create_kelpie

execute if score #fathoms.error fathoms.dummy matches 1 if score #fathoms.essence.aberration fathoms.dummy matches 3 run advancement grant @s only fathoms:nautical/all_max_level_rituals morph_steed