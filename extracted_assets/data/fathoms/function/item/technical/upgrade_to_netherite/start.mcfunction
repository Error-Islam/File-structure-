execute if entity @s[advancements={fathoms:technical/inventory_changed/upgrade_to_netherite={pickaxe=true}}] run function fathoms:item/technical/upgrade_to_netherite/apply/pickaxe
execute if entity @s[advancements={fathoms:technical/inventory_changed/upgrade_to_netherite={axe=true}}] run function fathoms:item/technical/upgrade_to_netherite/apply/axe
execute if entity @s[advancements={fathoms:technical/inventory_changed/upgrade_to_netherite={shovel=true}}] run function fathoms:item/technical/upgrade_to_netherite/apply/shovel
execute if entity @s[advancements={fathoms:technical/inventory_changed/upgrade_to_netherite={hoe=true}}] run function fathoms:item/technical/upgrade_to_netherite/apply/hoe
execute if entity @s[advancements={fathoms:technical/inventory_changed/upgrade_to_netherite={cleaver=true}}] run function fathoms:item/technical/upgrade_to_netherite/apply/cleaver

advancement revoke @s only fathoms:technical/inventory_changed/upgrade_to_netherite