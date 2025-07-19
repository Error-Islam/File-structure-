data remove storage fathoms:temp root
execute store result score #fathoms.total_entries fathoms.dummy run data get storage fathoms:gastronomicon entries
scoreboard players remove #fathoms.total_entries fathoms.dummy 1

execute if score @s fathoms.gastronomicon_page matches ..-1 run scoreboard players operation @s fathoms.gastronomicon_page = #fathoms.total_entries fathoms.dummy
scoreboard players add #fathoms.total_entries fathoms.dummy 1
execute if score @s fathoms.gastronomicon_page >= #fathoms.total_entries fathoms.dummy run scoreboard players set @s fathoms.gastronomicon_page 0