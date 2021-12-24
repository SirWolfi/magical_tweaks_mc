##
 # main.mcfunction
 # intern/classes/main/hacker
 #
 # Created by .
##

execute as @a[scores={class_id=1}] at @s run attribute @s generic.max_health base set 20
execute as @a[scores={class_id=1}] at @s run attribute @s generic.attack_damage base set 1.0
execute as @a[scores={class_id=1}] at @s run attribute @s generic.movement_speed base set 0.1
# Crafting
# terminal
execute as @e[type=item,nbt={Item:{Count:3b,id:"minecraft:clay_ball",tag:{EntityTag:{Tags:["ardoino"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:20b,id:"minecraft:string",tag:{EntityTag:{Tags:["line_o_c"]}}}}] if entity @e[type=item_frame,tag=tech_table,distance=..0.4] if entity @p[distance=..2,scores={class_id=1}] run function the_sirwolf:intern/classes/main/hacker/items/terminal

# bug
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:flowering_azalea_leaves"}}] at @s run execute if entity @e[type=item_frame,tag=extractor,distance=..0.4] run function the_sirwolf:intern/classes/main/hacker/items/bug

# line of code
execute as @e[type=item,nbt={Item:{Count:10b,id:"minecraft:lime_dye",tag:{EntityTag:{Tags:["bug"]}}}}] at @s if entity @e[type=item_frame,tag=tech_table,distance=..0.4] if entity @p[distance=..2,scores={class_id=1}] run function the_sirwolf:intern/classes/main/hacker/items/line_of_code

# ardoino
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:copper_ingot",tag:{EntityTag:{Tags:["circuit_board"]}}}}] at @s if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:10b,id:"minecraft:string",tag:{EntityTag:{Tags:["line_o_c"]}}}}] if entity @e[type=item_frame,tag=tech_table,distance=..0.4] if entity @p[distance=..2,scores={class_id=1}] run function the_sirwolf:intern/classes/main/hacker/items/ardoino

# Lazer 
execute as @e[type=item,nbt={Item:{Count:3b,id:"minecraft:copper_ingot",tag:{EntityTag:{Tags:["circuit_board"]}}}}] at @s if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:30b,id:"minecraft:string",tag:{EntityTag:{Tags:["line_o_c"]}}}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:3b,id:"minecraft:string",tag:{EntityTag:{Tags:["antenna"]}}}}] if entity @e[type=item_frame,tag=tech_table,distance=..0.4] if entity @p[distance=..2,scores={class_id=1}] run function the_sirwolf:intern/classes/main/hacker/items/ardoino

# Terminal Hacks unlocks

# psy hack
#-fly
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["glider"]}}}}] at @s if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["terminal"]}}}}] if entity @e[type=item,limit=1,distance=0.1..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["glider"]}}}}] if entity @e[type=item_frame,tag=tech_table,distance=..0.4] if entity @p[distance=..2,scores={class_id=1}] run function the_sirwolf:intern/classes/main/hacker/items/terminal_enable_craft/fly
#-xray
execute as @e[type=item,nbt={Item:{Count:32b,id:"minecraft:glowstone"}}] at @s if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:10b,id:"minecraft:glow_ink_sac"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["terminal"]}}}}] if entity @e[type=item_frame,tag=tech_table,distance=..0.4] if entity @p[distance=..2,scores={class_id=1}] run function the_sirwolf:intern/classes/main/hacker/items/terminal_enable_craft/xray
#-gills
execute as @e[type=item,nbt={Item:{Count:20b,id:"minecraft:prismarine"}}] at @s if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:64b,id:"minecraft:kelp"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["terminal"]}}}}] if entity @e[type=item_frame,tag=tech_table,distance=..0.4] if entity @p[distance=..2,scores={class_id=1}] run function the_sirwolf:intern/classes/main/hacker/items/terminal_enable_craft/gills
#-mobility
execute as @e[type=item,nbt={Item:{Count:10b,id:"minecraft:slime_block"}}] at @s if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:10b,id:"minecraft:rabbit_foot"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["terminal"]}}}}] if entity @e[type=item_frame,tag=tech_table,distance=..0.4] if entity @p[distance=..2,scores={class_id=1}] run function the_sirwolf:intern/classes/main/hacker/items/terminal_enable_craft/mobility

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["lazer"]}}}}] if score @s lazer_cldw < MAX_cldw lazer_cldw run title @s actionbar [{"score":{"name":"@s","objective":"lazer_cldw"}},"/",{"score":{"name":"MAX_cldw","objective":"lazer_cldw"}}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["lazer"]}}}}] if score @s lazer_cldw >= MAX_cldw lazer_cldw run title @s actionbar {"text": "Satelite Control ready","color": "dark_purple"}

function the_sirwolf:intern/classes/main/hacker/items/lazer/tick
function the_sirwolf:intern/classes/main/hacker/items/psy_hack/tick

# Hacks
function the_sirwolf:intern/classes/main/hacker/interface/hacks/xray_hack
function the_sirwolf:intern/classes/main/hacker/interface/hacks/fly_hack
function the_sirwolf:intern/classes/main/hacker/interface/hacks/mobility_hack
function the_sirwolf:intern/classes/main/hacker/interface/hacks/gills_hack
