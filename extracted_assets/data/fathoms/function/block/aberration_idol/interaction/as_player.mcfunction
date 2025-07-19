data remove storage fathoms:temp root
data modify storage fathoms:temp root.uuid set from entity @s UUID

execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{fathoms:{id:"tell_tale_heart"}}] run scoreboard players set #fathoms.has_tell_tale_heart fathoms.dummy 1