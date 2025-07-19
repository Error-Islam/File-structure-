playsound fathoms:block.aberration_idol.eject_heart block @a[distance=..16] ~ ~ ~ 1
particle minecraft:squid_ink ^ ^ ^0.5 0 0 0 0.05 5

execute positioned ~ ~-0.25 ~ run loot spawn ^ ^ ^0.75 loot fathoms:items/tell_tale_heart

scoreboard players reset #fathoms.success fathoms.dummy