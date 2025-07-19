execute if predicate thallium:entity_properties/hurt/true if entity @s[tag=!thallium.entity.hurt] run function thallium:entity/technical/wandering_trader/hurt_start
execute if predicate thallium:entity_properties/hurt/false if entity @s[tag=thallium.entity.hurt] run function thallium:entity/technical/wandering_trader/hurt_stop

item replace entity @s weapon.mainhand from entity @s armor.chest

item modify entity @s armor.head thallium:entity/set_state/wandering_trader/head
item modify entity @s weapon.mainhand thallium:entity/set_state/wandering_trader/body