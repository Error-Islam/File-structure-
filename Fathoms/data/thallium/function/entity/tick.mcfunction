execute if predicate thallium:entity_properties/walking if predicate thallium:entity_properties/is_on_ground run function thallium:entity/step

execute store result score @s thallium.hurt_time run data get entity @s HurtTime
execute if score @s thallium.entity.step_sound matches 16.. run function thallium:entity/technical/sounds/step

execute if entity @s[tag=thallium.entity.wandering_trader] run function thallium:entity/technical/wandering_trader/tick
execute if entity @s[tag=thallium.entity.vindicator] run function thallium:entity/technical/vindicator/tick

function #thallium:entity/tick