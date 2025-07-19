execute positioned ~ ~-1 ~ if predicate thallium:location_check/fluid/water run return run execute summon minecraft:drowned run function fathoms:block/aberration_idol/ritual/active/conjure_beasts/as_mob

execute store result score #fathoms.mob fathoms.dummy run random value 1..100
execute if score #fathoms.mob fathoms.dummy matches 1..30 summon minecraft:zombie run return run function fathoms:block/aberration_idol/ritual/active/conjure_beasts/as_mob
execute if score #fathoms.mob fathoms.dummy matches 31..50 if block ~1 ~ ~ #thallium:not_solid if block ~-1 ~ ~ #thallium:not_solid if block ~ ~ ~1 #thallium:not_solid if block ~ ~ ~-1 #thallium:not_solid summon minecraft:spider run return run function fathoms:block/aberration_idol/ritual/active/conjure_beasts/as_mob
execute if score #fathoms.mob fathoms.dummy matches 51..70 summon minecraft:skeleton run return run function fathoms:block/aberration_idol/ritual/active/conjure_beasts/as_mob
execute if score #fathoms.mob fathoms.dummy matches 71..95 summon minecraft:creeper run return run function fathoms:block/aberration_idol/ritual/active/conjure_beasts/as_mob
execute if score #fathoms.mob fathoms.dummy matches 96..100 unless predicate thallium:weather_check/raining summon minecraft:enderman run return run function fathoms:block/aberration_idol/ritual/active/conjure_beasts/as_mob