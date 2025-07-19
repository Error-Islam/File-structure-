data remove storage fathoms:temp root
data modify storage fathoms:temp root.entity set from entity @s

execute summon minecraft:skeleton_horse run function fathoms:entity/kelpie/transform/as_kelpie

execute if data storage fathoms:temp root.entity.equipment.body run function fathoms:entity/kelpie/transform/drop_items/body
execute if data storage fathoms:temp root.entity.equipment.saddle run function fathoms:entity/kelpie/transform/drop_items/saddle

scoreboard players set #fathoms.error fathoms.dummy 1

execute on passengers run ride @s dismount
tp @s 0 -256 0
kill @s

execute if score #fathoms.command_spawned fathoms.dummy matches 1 run return fail

particle minecraft:squid_ink ~ ~1 ~ 0.5 0.5 0.5 0 20
playsound fathoms:entity.horse.convert_to_kelpie neutral @a[distance=..16]