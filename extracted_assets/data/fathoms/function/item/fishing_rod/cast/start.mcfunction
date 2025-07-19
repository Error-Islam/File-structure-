scoreboard players reset @s fathoms.cast_fishing_rod

data remove storage fathoms:temp root
execute unless items entity @s weapon.* *[minecraft:custom_data~{fathoms:{bait:{}}}] run data modify storage fathoms:temp root.bait set value {consumption_chance:0,tag:"fathoms.fishing_bobber.bait.none",sound:"none"}
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{fathoms:{bait:{}}}] run function fathoms:item/fishing_rod/cast/bait/mainhand
execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{fathoms:{bait:{}}}] run function fathoms:item/fishing_rod/cast/bait/offhand

execute as @n[type=minecraft:fishing_bobber,tag=!fathoms.entity.fishing_bobber] run function fathoms:item/fishing_rod/cast/as_bobber
function fathoms:item/fishing_rod/cast/bait/consume with storage fathoms:temp root.bait