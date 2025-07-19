item modify entity @s weapon.mainhand fathoms:custom_model_data/gastronomicon/closed

tag @s remove fathoms.entity.player.gastronomicon_open

attribute @s minecraft:movement_speed modifier remove fathoms:item.gastronomicon.movement_speed
attribute @s minecraft:jump_strength modifier remove fathoms:item.gastronomicon.jump_strength

playsound minecraft:item.book.page_turn player @a[distance=..8] ~ ~ ~ 0.5