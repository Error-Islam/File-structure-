particle minecraft:firework ~ ~ ~ 0.35 0.25 0.35 0 5
particle minecraft:firework ^ ^ ^1 0 0 0 0.1 8
playsound fathoms:block.aberration_idol.end.divine_gift block @a[distance=..16] ~ ~ ~

loot spawn ^ ^ ^1 loot fathoms:items/bait/bejeweled_magnet
execute if score #fathoms.essence.aberration fathoms.dummy matches 1.. run loot spawn ^ ^ ^1 loot fathoms:items/bait/bejeweled_magnet
execute if score #fathoms.essence.aberration fathoms.dummy matches 2.. run loot spawn ^ ^ ^1 loot fathoms:items/bait/bejeweled_magnet
execute if score #fathoms.essence.aberration fathoms.dummy matches 3.. run loot spawn ^ ^ ^1 loot fathoms:items/bait/bejeweled_magnet
execute if score #fathoms.essence.aberration fathoms.dummy matches 4.. run loot spawn ^ ^ ^1 loot fathoms:items/bait/bejeweled_magnet