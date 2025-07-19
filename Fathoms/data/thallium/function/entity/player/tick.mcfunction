function #thallium:entity/player/tick

execute if score @s thallium.warped_fungus_on_a_stick matches 1.. run function thallium:item/warped_fungus_on_a_stick

execute if score @s thallium.bow matches 1.. run function thallium:entity/arrow/shoot

execute if score @s tl.menu matches 1.. run function thallium:technical/list/open
execute if score @s tl.menu matches ..-1 run function thallium:technical/list/open
scoreboard players enable @s[tag=!thallium.menu_locked] tl.menu