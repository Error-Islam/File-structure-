execute unless predicate thallium:random_chance/20 run return fail
execute unless entity @p[distance=..16] run return fail

data remove storage fathoms:temp root
data modify storage fathoms:temp root.end_x set from entity @s Pos[0]
data modify storage fathoms:temp root.end_y set from entity @s Pos[1]
data modify storage fathoms:temp root.end_z set from entity @s Pos[2]
function fathoms:block/aberration_idol/ritual/active/particle with storage fathoms:temp root