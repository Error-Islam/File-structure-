$item modify entity @s $(slot) {"function": "minecraft:set_count","count": 0.1,"add": true}
$playsound $(sound) player @a[distance=..8] ~ ~ ~ 0.5
$execute if predicate {"condition":"minecraft:random_chance","chance":$(consumption_chance)} run item modify entity @s[gamemode=!creative] $(slot) thallium:count/remove_1