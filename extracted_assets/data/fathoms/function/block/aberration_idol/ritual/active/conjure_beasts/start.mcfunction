scoreboard players reset #fathoms.total_mobs fathoms.dummy
execute as @e[type=#fathoms:conjure_beasts_mobs,tag=fathoms.entity.conjure_beasts_spawned,distance=..128] run scoreboard players add #fathoms.total_mobs fathoms.dummy 1
execute if score #fathoms.total_mobs fathoms.dummy matches 50.. run return fail
execute as @e[type=#fathoms:conjure_beasts_mobs,tag=!fathoms.entity.conjure_beasts_spawned,distance=..128] run scoreboard players add #fathoms.total_mobs fathoms.dummy 1
execute if score #fathoms.total_mobs fathoms.dummy matches 100.. run return fail

execute store result score #fathoms.ritual_amplifier fathoms.dummy run data get entity @s data.fathoms.ritual.amplifier

data remove storage fathoms:temp root
execute store result storage fathoms:temp root.x int 1 run random value -32..32
execute store result storage fathoms:temp root.z int 1 run random value -32..32
function fathoms:block/aberration_idol/ritual/active/conjure_beasts/macro with storage fathoms:temp root

execute unless score #fathoms.ritual_amplifier fathoms.dummy matches 1.. run return fail
execute store result storage fathoms:temp root.x int 1 run random value -32..32
execute store result storage fathoms:temp root.z int 1 run random value -32..32
function fathoms:block/aberration_idol/ritual/active/conjure_beasts/macro with storage fathoms:temp root

execute unless score #fathoms.ritual_amplifier fathoms.dummy matches 2.. unless predicate thallium:random_chance/20 run return fail
execute store result storage fathoms:temp root.x int 1 run random value -32..32
execute store result storage fathoms:temp root.z int 1 run random value -32..32
function fathoms:block/aberration_idol/ritual/active/conjure_beasts/macro with storage fathoms:temp root

execute unless score #fathoms.ritual_amplifier fathoms.dummy matches 3.. unless predicate thallium:random_chance/40 run return fail
execute store result storage fathoms:temp root.x int 1 run random value -32..32
execute store result storage fathoms:temp root.z int 1 run random value -32..32
function fathoms:block/aberration_idol/ritual/active/conjure_beasts/macro with storage fathoms:temp root

execute unless score #fathoms.ritual_amplifier fathoms.dummy matches 4.. unless predicate thallium:random_chance/60 run return fail
execute store result storage fathoms:temp root.x int 1 run random value -32..32
execute store result storage fathoms:temp root.z int 1 run random value -32..32
function fathoms:block/aberration_idol/ritual/active/conjure_beasts/macro with storage fathoms:temp root