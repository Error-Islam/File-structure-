execute if predicate fathoms:entity_properties/gastronomicon_inputs/left run scoreboard players remove @s fathoms.gastronomicon_page 1
execute if predicate fathoms:entity_properties/gastronomicon_inputs/right run scoreboard players add @s fathoms.gastronomicon_page 1
function fathoms:item/gastronomicon/open/set_page/start

tag @s add fathoms.entity.player.gastronomicon_input_held_down