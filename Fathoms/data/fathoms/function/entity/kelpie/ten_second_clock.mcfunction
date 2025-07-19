execute if entity @s[tag=fathoms.entity.kelpie.persistent] run return fail

execute store result score #fathoms.despawn_time fathoms.dummy run data get entity @s data.fathoms.kelpie_despawn_time
execute store result score #fathoms.current_time fathoms.dummy run time query gametime
execute if score #fathoms.current_time fathoms.dummy > #fathoms.despawn_time fathoms.dummy run function fathoms:entity/kelpie/revert/start