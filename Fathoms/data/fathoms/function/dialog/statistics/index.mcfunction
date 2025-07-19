scoreboard players reset #fathoms.fish_caught fathoms.dummy
scoreboard players reset #fathoms.aberrations_caught fathoms.dummy
scoreboard players operation #fathoms.fish_caught fathoms.dummy = @s fathoms.statistics.fish_caught
scoreboard players operation #fathoms.aberrations_caught fathoms.dummy = @s fathoms.statistics.aberrations_caught
scoreboard players operation #fathoms.fish_caught fathoms.dummy += #fathoms.aberrations_caught fathoms.dummy

data remove storage fathoms:temp root
execute store result storage fathoms:temp root.menu.fish_caught int 1 run scoreboard players get @s fathoms.statistics.fish_caught
execute store result storage fathoms:temp root.menu.aberrations_caught int 1 run scoreboard players get @s fathoms.statistics.aberrations_caught
execute store result storage fathoms:temp root.menu.total_fish_caught int 1 run scoreboard players get #fathoms.fish_caught fathoms.dummy
execute store result storage fathoms:temp root.menu.fish_chopped int 1 run scoreboard players get @s fathoms.statistics.fish_chopped
execute store result storage fathoms:temp root.menu.items_dredged int 1 run scoreboard players get @s fathoms.statistics.items_dredged
execute store result storage fathoms:temp root.menu.coffers_opened int 1 run scoreboard players get @s fathoms.statistics.coffers_opened
execute store result storage fathoms:temp root.menu.rituals_performed int 1 run scoreboard players get @s fathoms.statistics.rituals_performed

function fathoms:dialog/statistics/macro with storage fathoms:temp root.menu