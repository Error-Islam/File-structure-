data modify storage thallium:temp list_encoded set value true

$tellraw @s {translate:"ui.thallium.load.list_entry",color:"gray",font:"thallium:5",with:[$(pack_text),{text:"$(version)",font:"thallium:5"},$(version_title)]}