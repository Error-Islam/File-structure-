playsound minecraft:item.book.page_turn player @a[distance=..8] ~ ~ ~ 0.5

function fathoms:item/gastronomicon/open/set_page/loop
execute store result storage fathoms:temp root.selected_entry int 1 run scoreboard players get @s fathoms.gastronomicon_page

function fathoms:item/gastronomicon/open/set_page/get_entry with storage fathoms:temp root
function fathoms:item/gastronomicon/open/set_page/apply with storage fathoms:temp root