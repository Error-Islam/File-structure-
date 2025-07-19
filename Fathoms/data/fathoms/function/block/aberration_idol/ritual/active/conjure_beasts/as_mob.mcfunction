loot replace entity @s[type=#fathoms:sunlight_vulnerable] armor.head loot fathoms:equipment/conjure_beasts_helmets
data modify entity @s drop_chances.head set value 0
data modify entity @s DeathLootTable set value "fathoms:entities/conjured_beast"

execute store result score #fathoms.mob fathoms.dummy run random value 1..4
execute if score #fathoms.mob fathoms.dummy matches 1 run data modify entity @s Motion set value [0.1f,0.0,0.0f]
execute if score #fathoms.mob fathoms.dummy matches 2 run data modify entity @s Motion set value [-0.1f,0.0,0.0f]
execute if score #fathoms.mob fathoms.dummy matches 3 run data modify entity @s Motion set value [0.0f,0.0,0.1f]
execute if score #fathoms.mob fathoms.dummy matches 4 run data modify entity @s Motion set value [0.0f,0.0,-0.1f]
execute if score #fathoms.mob fathoms.dummy matches 5 run data modify entity @s Motion set value [0.1f,0.0,0.1f]
execute if score #fathoms.mob fathoms.dummy matches 6 run data modify entity @s Motion set value [0.1f,0.0,-0.1f]
execute if score #fathoms.mob fathoms.dummy matches 7 run data modify entity @s Motion set value [-0.1f,0.0,0.1f]
execute if score #fathoms.mob fathoms.dummy matches 8 run data modify entity @s Motion set value [-0.1f,0.0,-0.1f]

tag @s add thallium.processed
tag @s add thallium.entity
tag @s add fathoms.entity.conjure_beasts_spawned