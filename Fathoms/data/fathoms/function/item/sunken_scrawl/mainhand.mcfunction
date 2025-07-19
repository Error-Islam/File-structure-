execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{fathoms:{state:"front"}}] run scoreboard players set #fathoms.temp fathoms.dummy 0
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{fathoms:{state:"back"}}] run scoreboard players set #fathoms.temp fathoms.dummy 1
scoreboard players add #fathoms.temp fathoms.dummy 1
execute if score #fathoms.temp fathoms.dummy matches 2 run scoreboard players set #fathoms.temp fathoms.dummy 0

execute if score #fathoms.temp fathoms.dummy matches 0 run item modify entity @s weapon.mainhand fathoms:custom_model_data/sunken_scrawl/front
execute if score #fathoms.temp fathoms.dummy matches 1 run item modify entity @s weapon.mainhand fathoms:custom_model_data/sunken_scrawl/back