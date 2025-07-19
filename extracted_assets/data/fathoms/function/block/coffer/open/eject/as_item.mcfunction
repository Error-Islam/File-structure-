playsound fathoms:block.coffer.eject block @a[distance=..16] ~ ~ ~
execute store result score #fathoms.temp fathoms.dummy run random value 1..4
execute if score #fathoms.temp fathoms.dummy matches 1 run data modify entity @s Motion[0] set value 0.025
execute if score #fathoms.temp fathoms.dummy matches 2 run data modify entity @s Motion[0] set value -0.025
execute if score #fathoms.temp fathoms.dummy matches 3..4 run data modify entity @s Motion[0] set value 0
execute store result score #fathoms.temp fathoms.dummy run random value 1..4
execute if score #fathoms.temp fathoms.dummy matches 1 run data modify entity @s Motion[2] set value 0.025
execute if score #fathoms.temp fathoms.dummy matches 2 run data modify entity @s Motion[2] set value -0.025
execute if score #fathoms.temp fathoms.dummy matches 3..4 run data modify entity @s Motion[2] set value 0