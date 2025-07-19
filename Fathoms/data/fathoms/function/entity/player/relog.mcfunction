execute unless biome ~ ~ ~ fathoms:rocky_waters run advancement revoke @s only fathoms:technical/location_changed/title_card/rocky_waters
execute unless biome ~ ~ ~ fathoms:ancient_reservoir run advancement revoke @s only fathoms:technical/location_changed/title_card/ancient_reservoir

scoreboard players enable @s _fathoms.menu

# This is a failsafe in case the player gets stuck in the Gastronomicon
tag @s remove fathoms.entity.player.gastronomicon_open
attribute @s minecraft:movement_speed modifier remove fathoms:item.gastronomicon.movement_speed
attribute @s minecraft:jump_strength modifier remove fathoms:item.gastronomicon.jump_strength