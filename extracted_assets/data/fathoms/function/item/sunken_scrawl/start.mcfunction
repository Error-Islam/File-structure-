execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{fathoms:{id:"sunken_scrawl"}}] run function fathoms:item/sunken_scrawl/mainhand
execute if items entity @s weapon.offhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{fathoms:{id:"sunken_scrawl"}}] unless items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{fathoms:{id:"sunken_scrawl"}}] run function fathoms:item/sunken_scrawl/offhand

playsound fathoms:item.sunken_scrawl player @a[distance=..8] ~ ~ ~ 0.5