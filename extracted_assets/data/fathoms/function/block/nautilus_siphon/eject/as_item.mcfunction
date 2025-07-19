data modify entity @s Item set from storage fathoms:temp root.item
data modify storage fathoms:temp root.advancement.criteria set from storage fathoms:temp root.item.id
data modify storage fathoms:temp root.advancement.criteria set from storage fathoms:temp root.item.components."minecraft:custom_data".fathoms.id

execute if score #fathoms.temp fathoms.dummy matches -90 run data modify entity @s Motion set value [0.05,0.0,0.0]
execute if score #fathoms.temp fathoms.dummy matches 90 run data modify entity @s Motion set value [-0.05,0.0,0.0]
execute if score #fathoms.temp fathoms.dummy matches 0 run data modify entity @s Motion set value [0.0,0.0,0.05]
execute if score #fathoms.temp fathoms.dummy matches 180 run data modify entity @s Motion set value [0.0,0.0,-0.05]

tag @s remove fathoms.entity.marker_item

execute at @s run particle minecraft:bubble ~ ~ ~ 0.1 0.1 0.1 0.2 5