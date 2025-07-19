data remove storage fathoms:temp root
data modify storage fathoms:temp root.particle set from entity @s item.components."minecraft:custom_model_data".strings[0]
function fathoms:block/aberration_idol/break/hit/particle with storage fathoms:temp root