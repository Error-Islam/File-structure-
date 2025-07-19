execute unless score @s tl.menu matches 82 run playsound thallium:ui.button master @s
execute if score @s tl.menu matches 82 run function thallium:technical/list/secret

tellraw @s {text:"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
function thallium:technical/list/main