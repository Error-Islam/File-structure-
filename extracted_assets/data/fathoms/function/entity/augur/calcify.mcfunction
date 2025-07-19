function thallium:entity/despawn
loot spawn ~ ~ ~ loot fathoms:items/pylon

playsound fathoms:entity.augur.calcify hostile @a[distance=..16] ~ ~ ~ 1
particle minecraft:flash ~ ~1 ~
particle minecraft:firework ~ ~1 ~ 0.15 0.15 0.15 0.1 5