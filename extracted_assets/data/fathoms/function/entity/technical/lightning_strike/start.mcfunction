execute as @e[type=minecraft:drowned,distance=..256,tag=fathoms.entity.augur] at @s if entity @e[type=minecraft:lightning_bolt,distance=..4] run function fathoms:entity/augur/calcify
execute as @e[type=minecraft:skeleton_horse,distance=..256,tag=fathoms.entity.kelpie,tag=!fathoms.entity.kelpie.dried] at @s if entity @e[type=minecraft:lightning_bolt,distance=..4] run function fathoms:entity/kelpie/dry

advancement revoke @s only fathoms:technical/lightning_strike/generic