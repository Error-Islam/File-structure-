function fathoms:block/dredging_apparatus/moving/lowering/stop

execute align y run particle minecraft:campfire_cosy_smoke ~ ~1.5 ~ 0.25 0 0.25 0.01 10
execute unless predicate thallium:location_check/fluid/water run playsound fathoms:block.dredging_apparatus.embed_claw block @a[distance=..16]
execute if predicate thallium:location_check/fluid/water run playsound fathoms:block.dredging_apparatus.embed_claw_in_water block @a[distance=..16]