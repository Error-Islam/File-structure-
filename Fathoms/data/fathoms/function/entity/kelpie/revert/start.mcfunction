particle minecraft:squid_ink ~ ~1 ~ 0.5 0.5 0.5 0 20
playsound fathoms:entity.kelpie.convert_to_horse neutral @a[distance=..16]

data remove storage fathoms:temp root
data modify storage fathoms:temp root.entity set from entity @s

execute summon minecraft:horse run function fathoms:entity/kelpie/revert/as_horse

execute on passengers run ride @s dismount
tp @s 0 -256 0
kill @s