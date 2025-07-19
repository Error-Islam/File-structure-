tag @s add fathoms.entity.hurt

item modify entity @s[tag=!fathoms.entity.kelpie.dried] saddle fathoms:entity/set_state/kelpie/hurt
item modify entity @s[tag=fathoms.entity.kelpie.dried] saddle fathoms:entity/set_state/kelpie/dried/hurt

execute if entity @s[tag=!fathoms.entity.kelpie.dried] run playsound fathoms:entity.kelpie.hurt neutral @a[distance=..16]
execute if entity @s[tag=fathoms.entity.kelpie.dried] run playsound fathoms:entity.kelpie.dried.hurt neutral @a[distance=..16]