data merge entity @s {Tags:["smithed.block","smithed.entity","smithed.strict","thallium.entity","thallium.entity.block","thallium.second_clock","thallium.tick","thallium.registered","thallium.entity.block.update_light","fathoms.block","fathoms.block.pylon"],item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:item_model":"fathoms:pylon"}}}

function thallium:block/lighting/main

execute store result score @s fathoms.entity run random value 10..30