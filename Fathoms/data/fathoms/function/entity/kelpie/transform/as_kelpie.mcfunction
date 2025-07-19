data modify entity @s Bred set from storage fathoms:temp root.entity.Bred
data modify entity @s Owner set from storage fathoms:temp root.entity.Owner
data modify entity @s Temper set from storage fathoms:temp root.entity.Temper
data modify entity @s Variant set from storage fathoms:temp root.entity.Variant
data modify entity @s attributes set from storage fathoms:temp root.entity.attributes
data modify entity @s Age set from storage fathoms:temp root.entity.Age
data modify entity @s active_effects set from storage fathoms:temp root.entity.active_effects
data modify entity @s Rotation set from storage fathoms:temp root.entity.Rotation

data modify entity @s data.fathoms.horse.Variant set from storage fathoms:temp root.entity.Variant
data modify entity @s data.fathoms.horse.drop_chances set from storage fathoms:temp root.entity.drop_chances
data modify entity @s data.fathoms.horse.DeathLootTable set from storage fathoms:temp root.entity.DeathLootTable
execute store success score #fathoms.temp fathoms.dummy run data modify entity @s CustomName set from storage fathoms:temp root.entity.CustomName
execute if score #fathoms.temp fathoms.dummy matches 0 run data modify entity @s CustomName set value {"translate":"entity.fathoms.kelpie"}
execute if score #fathoms.temp fathoms.dummy matches 0 run team join fathoms.kelpie

data merge entity @s {Silent:1b,Tame:1b,DeathTime:20,drop_chances:{saddle:0},Tame:1b,DeathLootTable:"fathoms:entities/kelpie",data:{thallium:{enchantment_interactions:{affected:["impaling"]}}},Tags:["smithed.entity","thallium.entity","thallium.second_clock","thallium.ten_second_clock","thallium.tick","thallium.processed","fathoms.entity","fathoms.entity.kelpie"]}
item replace entity @s saddle with minecraft:saddle[minecraft:equippable={asset_id:"fathoms:kelpie/default",slot:"saddle"},minecraft:item_model="thallium:gui/blocked_slot",minecraft:enchantment_glint_override=false,minecraft:enchantments={"minecraft:binding_curse":1},minecraft:tooltip_display={hide_tooltip:true}]

attribute @s minecraft:armor modifier add fathoms:entity.kelpie 11 add_value
attribute @s minecraft:armor_toughness modifier add fathoms:entity.kelpie 2 add_value
attribute @s minecraft:movement_speed modifier add fathoms:entity.kelpie 0.1 add_value
attribute @s minecraft:jump_strength modifier add fathoms:entity.kelpie 0.1 add_value
attribute @s minecraft:max_health modifier add fathoms:entity.kelpie 0.5 add_multiplied_total
attribute @s minecraft:water_movement_efficiency modifier add fathoms:entity.kelpie 1 add_value
attribute @s minecraft:scale modifier add fathoms:entity.kelpie 0.1 add_value

data modify entity @s data.fathoms.dried set value 0b

execute store result entity @s Health double 1 run attribute @s minecraft:max_health get

execute if score #fathoms.command_spawned fathoms.dummy matches 1 run return run tag @s add fathoms.entity.kelpie.persistent

execute store result score #fathoms.time fathoms.dummy run time query gametime
scoreboard players add #fathoms.time fathoms.dummy 18000
execute if score #fathoms.essence.aberration fathoms.dummy matches 1.. run scoreboard players add #fathoms.time fathoms.dummy 18000
execute if score #fathoms.essence.aberration fathoms.dummy matches 2.. run scoreboard players add #fathoms.time fathoms.dummy 18000
execute if score #fathoms.essence.aberration fathoms.dummy matches 3.. run scoreboard players add #fathoms.time fathoms.dummy 18000
execute store result entity @s data.fathoms.kelpie_despawn_time int 1 run scoreboard players get #fathoms.time fathoms.dummy