execute if predicate thallium:entity_properties/hurt/true if entity @s[tag=!thallium.entity.hurt] run function thallium:entity/technical/vindicator/hurt_start
execute if predicate thallium:entity_properties/hurt/false if entity @s[tag=thallium.entity.hurt] run function thallium:entity/technical/vindicator/hurt_stop

item modify entity @s armor.head thallium:entity/set_state/vindicator

rotate @s ~ 0