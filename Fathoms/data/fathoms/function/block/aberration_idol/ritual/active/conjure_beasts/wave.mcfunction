particle minecraft:squid_ink ~ ~1 ~ 0.25 0.5 0.25 0.1 35
playsound fathoms:block.aberration_idol.conjure_beasts.summon hostile @a[distance=..16] ~ ~ ~

function fathoms:block/aberration_idol/ritual/active/conjure_beasts/individual
execute if predicate thallium:random_chance/20 run function fathoms:block/aberration_idol/ritual/active/conjure_beasts/individual
execute if predicate thallium:random_chance/80 run function fathoms:block/aberration_idol/ritual/active/conjure_beasts/individual