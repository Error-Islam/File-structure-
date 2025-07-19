item modify entity @s weapon.mainhand fathoms:custom_model_data/gastronomicon/open

function fathoms:item/gastronomicon/open/set_page/start

tag @s add fathoms.entity.player.gastronomicon_open

attribute @s minecraft:movement_speed modifier add fathoms:item.gastronomicon.movement_speed -99 add_value
attribute @s minecraft:jump_strength modifier add fathoms:item.gastronomicon.jump_strength -99 add_value