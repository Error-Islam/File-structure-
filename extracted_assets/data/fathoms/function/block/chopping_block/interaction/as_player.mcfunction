data remove storage fathoms:temp root
data modify storage fathoms:temp root.item set from entity @s SelectedItem

execute if predicate fathoms:entity_properties/creative_copy_fish run scoreboard players set #fathoms.copy_fish fathoms.dummy 1

execute if items entity @s weapon.mainhand #fathoms:can_cut_fish[!minecraft:custom_data~{smithed:{ignore:{functionality:1b}}}] run scoreboard players set #fathoms.should_cut_fish fathoms.dummy 2
execute if items entity @s weapon.mainhand minecraft:stone_sword[minecraft:custom_data~{fathoms:{id:"sacrificial_knife"}}] run scoreboard players set #fathoms.should_cut_fish fathoms.dummy 3
execute if items entity @s weapon.mainhand minecraft:diamond_axe[minecraft:custom_data~{fathoms:{id:"ornate_cleaver"}}] run scoreboard players set #fathoms.should_cut_fish fathoms.dummy 1
execute if items entity @s weapon.mainhand minecraft:netherite_axe[minecraft:custom_data~{fathoms:{id:"netherite_ornate_cleaver"}}] run scoreboard players set #fathoms.should_cut_fish fathoms.dummy 1
execute if score #fathoms.should_cut_fish fathoms.dummy matches 2.. if items entity @s weapon.mainhand #fathoms:axes run scoreboard players set #fathoms.should_cut_fish fathoms.dummy 1

execute if items entity @s weapon.mainhand minecraft:diamond_axe[minecraft:custom_data~{fathoms:{id:"ornate_cleaver"}}] run scoreboard players set #fathoms.used_ornate_cleaver fathoms.dummy 1
execute if items entity @s weapon.mainhand minecraft:netherite_axe[minecraft:custom_data~{fathoms:{id:"netherite_ornate_cleaver"}}] run scoreboard players set #fathoms.used_ornate_cleaver fathoms.dummy 1

scoreboard players reset #fathoms.charm_of_butchery_amplifier fathoms.dummy
execute if score @s fathoms.ritual.charm_of_butchery.duration matches 1.. run scoreboard players set #fathoms.charm_of_butchery_amplifier fathoms.dummy 1
execute if score @s fathoms.ritual.charm_of_butchery.duration matches 1.. run scoreboard players operation #fathoms.charm_of_butchery_amplifier fathoms.dummy += @s fathoms.ritual.charm_of_butchery.amplifier