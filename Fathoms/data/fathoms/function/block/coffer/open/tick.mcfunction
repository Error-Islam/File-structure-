scoreboard players remove @s fathoms.entity 1

execute if score @s fathoms.entity matches ..0 run function fathoms:block/coffer/open/break/start

execute if score @s fathoms.entity matches 45 run return run function fathoms:block/coffer/open/eject/common with entity @s data.fathoms
execute if score @s fathoms.entity matches 30 run return run function fathoms:block/coffer/open/eject/common with entity @s data.fathoms
execute if score @s fathoms.entity matches 15 run return run function fathoms:block/coffer/open/eject/unique with entity @s data.fathoms