particle minecraft:squid_ink ~ ~ ~ 0.25 0.25 0.25 0.1 15
playsound fathoms:block.aberration_idol.end.conjure_beasts block @a[distance=..16] ~ ~ ~

execute if score #fathoms.essence.aberration fathoms.dummy matches 0 run data modify entity @s data.fathoms.ritual set value {id:"conjure_beasts",function:"fathoms:block/aberration_idol/ritual/active/conjure_beasts/start",time:60,amplifier:0}
execute if score #fathoms.essence.aberration fathoms.dummy matches 1 run data modify entity @s data.fathoms.ritual set value {id:"conjure_beasts",function:"fathoms:block/aberration_idol/ritual/active/conjure_beasts/start",time:75,amplifier:1}
execute if score #fathoms.essence.aberration fathoms.dummy matches 2 run data modify entity @s data.fathoms.ritual set value {id:"conjure_beasts",function:"fathoms:block/aberration_idol/ritual/active/conjure_beasts/start",time:90,amplifier:2}
execute if score #fathoms.essence.aberration fathoms.dummy matches 3 run data modify entity @s data.fathoms.ritual set value {id:"conjure_beasts",function:"fathoms:block/aberration_idol/ritual/active/conjure_beasts/start",time:105,amplifier:3}
execute if score #fathoms.essence.aberration fathoms.dummy matches 4 run data modify entity @s data.fathoms.ritual set value {id:"conjure_beasts",function:"fathoms:block/aberration_idol/ritual/active/conjure_beasts/start",time:120,amplifier:4}
tag @s add fathoms.block.aberration_idol.active_effect