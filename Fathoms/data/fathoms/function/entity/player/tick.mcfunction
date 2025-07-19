execute if score @s fathoms.cast_fishing_rod matches 1.. run function fathoms:item/fishing_rod/cast/start
execute unless score @s _fathoms.menu matches 0 run function fathoms:dialog/start

execute if entity @s[tag=fathoms.title_card.queued] run function fathoms:entity/player/title_card/start
execute if entity @s[tag=fathoms.entity.player.gastronomicon_open] run function fathoms:item/gastronomicon/open/tick