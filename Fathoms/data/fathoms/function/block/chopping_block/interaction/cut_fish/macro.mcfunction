$loot spawn ~ ~-0.5 ~ loot $(chopping_block_loot_table)
$execute if predicate thallium:random_chance/20 if score #fathoms.used_ornate_cleaver fathoms.dummy matches 1 unless entity @s[tag=fathoms.block.chopping_block.tough_shell] run loot spawn ~ ~-0.5 ~ loot $(chopping_block_loot_table)
$summon minecraft:experience_orb ~ ~ ~ {Value:$(xp)}

execute unless score #fathoms.charm_of_butchery_amplifier fathoms.dummy matches 1.. run return fail
$execute if predicate thallium:random_chance/50 run loot spawn ~ ~-0.5 ~ loot $(chopping_block_loot_table)
$execute if predicate thallium:random_chance/50 if score #fathoms.charm_of_butchery_amplifier fathoms.dummy matches 2.. run loot spawn ~ ~-0.5 ~ loot $(chopping_block_loot_table)
$execute if predicate thallium:random_chance/50 if score #fathoms.charm_of_butchery_amplifier fathoms.dummy matches 3.. run loot spawn ~ ~-0.5 ~ loot $(chopping_block_loot_table)