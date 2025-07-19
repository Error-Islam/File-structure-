execute if entity @s[tag=fathoms.block.coffer.opening] run return fail
execute if data storage fathoms:temp root.item.components."minecraft:custom_data".fathoms{id:"sunken_key"} run return run function fathoms:block/coffer/open/start
playsound fathoms:block.coffer.locked block @a[distance=..16] ~ ~ ~