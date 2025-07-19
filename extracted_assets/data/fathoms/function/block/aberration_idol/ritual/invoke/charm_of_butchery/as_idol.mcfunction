particle minecraft:crit ~ ~ ~ 0.35 0.35 0.35 0.25 25
playsound fathoms:block.aberration_idol.end.generic block @a[distance=..16] ~ ~ ~

execute if score #fathoms.essence.aberration fathoms.dummy matches 0 run data modify entity @s data.fathoms.ritual set value {id:"charm_of_butchery",function:"fathoms:block/aberration_idol/ritual/active/charm_of_butchery/start",time:60,amplifier:0}
execute if score #fathoms.essence.aberration fathoms.dummy matches 1 run data modify entity @s data.fathoms.ritual set value {id:"charm_of_butchery",function:"fathoms:block/aberration_idol/ritual/active/charm_of_butchery/start",time:90,amplifier:1}
execute if score #fathoms.essence.aberration fathoms.dummy matches 2 run data modify entity @s data.fathoms.ritual set value {id:"charm_of_butchery",function:"fathoms:block/aberration_idol/ritual/active/charm_of_butchery/start",time:120,amplifier:2}
tag @s add fathoms.block.aberration_idol.active_effect

function fathoms:block/aberration_idol/ritual/active/charm_of_butchery/start