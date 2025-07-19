item modify entity @s weapon.mainhand {function:"minecraft:set_custom_model_data",strings:{values:["unset","unset","locked","locked","locked"],mode:"replace_all"}}
$item modify entity @s weapon.mainhand {function:"minecraft:set_custom_model_data",strings:{values:[$(name),$(environment)],mode:"replace_section",offset:0,size:2}}
$execute if entity @s[advancements={fathoms:nautical/catch_all_fish={$(name)=true}}] run item modify entity @s weapon.mainhand {function:"minecraft:set_custom_model_data",strings:{values:["unlocked"],mode:"replace_section",offset:2}}
$execute if data storage fathoms:temp root{aberration:"none"} if entity @s[advancements={fathoms:nautical/catch_all_fish={$(name)=false}}] run item modify entity @s weapon.mainhand {function:"minecraft:set_custom_model_data",strings:{values:["locked_centered"],mode:"replace_section",offset:2}}

$execute if entity @s[advancements={fathoms:nautical/catch_all_fish={$(aberration)=true}}] run item modify entity @s weapon.mainhand {function:"minecraft:set_custom_model_data",strings:{values:["unlocked"],mode:"replace_section",offset:3}}
execute if data storage fathoms:temp root{aberration:"none"} run item modify entity @s weapon.mainhand {function:"minecraft:set_custom_model_data",strings:{values:["unlocked"],mode:"replace_section",offset:3}}

execute if data storage fathoms:temp root{global:1b,has_essence:0b} run return run item modify entity @s weapon.mainhand {function:"minecraft:set_custom_model_data",strings:{values:["unlocked"],mode:"replace_section",offset:4}}
$execute if data storage fathoms:temp root{global:1b} if entity @s[advancements={fathoms:nautical/catch_all_fish={$(name)=false}}] run return run item modify entity @s weapon.mainhand {function:"minecraft:set_custom_model_data",strings:{values:["locked_centered"],mode:"replace_section",offset:4}}
$execute if entity @s[advancements={fathoms:nautical/catch_all_fish={$(name)=true}}] run return run item modify entity @s weapon.mainhand {function:"minecraft:set_custom_model_data",strings:{values:["unlocked"],mode:"replace_section",offset:4}}
$execute if entity @s[advancements={fathoms:nautical/catch_all_fish={$(aberration)=true}}] run return run item modify entity @s weapon.mainhand {function:"minecraft:set_custom_model_data",strings:{values:["unlocked"],mode:"replace_section",offset:4}}

