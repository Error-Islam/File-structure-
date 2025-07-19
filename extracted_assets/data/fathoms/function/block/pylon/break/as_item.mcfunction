execute align xyz run loot spawn ~0.5 ~0.5 ~0.5 loot fathoms:blocks/pylon
execute if predicate thallium:random_chance/50 unless entity @s[nbt={Item:{id:"minecraft:stone"}}] run scoreboard players set #fathoms.should_discharge fathoms.dummy 1

kill @s