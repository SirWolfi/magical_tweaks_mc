##
 # main.mcfunction
 # intern/classes/main/scientist
 #
 # Created by .
##

# settings
execute as @a[scores={class_id=8}] at @s run attribute @s generic.max_health base set 18
execute as @a[scores={class_id=8}] at @s run attribute @s generic.attack_damage base set 1
execute as @a[scores={class_id=8}] at @s run attribute @s generic.movement_speed base set 0.09

# mag caul
execute as @a[scores={class_id=8},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["mag_caul"]}}}}] at @s run scoreboard players add @s mag_caul_cldw 1
execute as @a[scores={class_id=8}] at @s if score @s mag_caul_cldw >= @s mag_caul_cldw_max run scoreboard players operation @s mag_caul_cldw = @s mag_caul_cldw_max

function the_sirwolf:intern/classes/main/scientist/items/potions_caul/parasite_potion/par_pot_tick

# crafting
execute as @e[type=item,nbt={Item:{Count:20b,id:"minecraft:glass"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:2b,id:"minecraft:iron_block"}}] if entity @e[type=item_frame,tag=crafter,distance=..0.8] run function the_sirwolf:intern/classes/main/scientist/scients_table

execute as @e[type=item,nbt={Item:{Count:32b,id:"minecraft:iron_ingot"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:10b,id:"minecraft:redstone",tag:{EntityTag:{Tags:["blood"]}}}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:20b,id:"minecraft:wheat_seeds",tag:{EntityTag:{Tags:["bio_probe"]}}}}] if entity @e[type=item_frame,tag=sci_tab,distance=..0.8] if entity @p[distance=..2,scores={class_id=8}] run function the_sirwolf:intern/classes/main/scientist/items/magical_cauldron

execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:glass_bottle"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:5b,id:"minecraft:wheat_seeds",tag:{EntityTag:{Tags:["bio_probe"]}}}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:2b,id:"minecraft:lime_dye",tag:{EntityTag:{Tags:["poison"]}}}}] if entity @e[type=item_frame,tag=sci_tab,distance=..0.8] if entity @p[distance=..2,scores={class_id=8}] run function the_sirwolf:intern/classes/main/scientist/items/chemicals

execute as @e[type=item,nbt={Item:{Count:5b,id:"minecraft:tnt"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:20b,id:"minecraft:paper"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:string"}}] if entity @e[type=item_frame,tag=sci_tab,distance=..0.8] if entity @p[distance=..2,scores={class_id=8}] run function the_sirwolf:intern/classes/main/scientist/items/dynamite/dynamite

execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:splash_potion",tag:{EntityTag:{Tags:["dynamite"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=0.1..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:splash_potion",tag:{EntityTag:{Tags:["dynamite"]}}}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:string"}}] if entity @e[type=item_frame,tag=sci_tab,distance=..0.8] if entity @p[distance=..2,scores={class_id=8}] run function the_sirwolf:intern/classes/main/scientist/items/dynamite/dynamite_lvl2

execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:stone_pressure_plate"}}] at @s run execute if entity @e[type=item,limit=1,distance=0.1..1,sort=nearest,nbt={Item:{Count:5b,id:"minecraft:redstone"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:5b,id:"minecraft:tnt"}}] if entity @e[type=item_frame,tag=sci_tab,distance=..0.8] if entity @p[distance=..2,scores={class_id=8}] run function the_sirwolf:intern/classes/main/scientist/items/land_mine


execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:splash_potion",tag:{EntityTag:{Tags:["dynamite_lvl2"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=0.1..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:splash_potion",tag:{EntityTag:{Tags:["dynamite_lvl2"]}}}}] if entity @e[type=item_frame,tag=sci_tab,distance=..0.8] if entity @p[distance=..2,scores={class_id=8}] run function the_sirwolf:intern/classes/main/scientist/items/dynamite/dynamite_lvl3

# nuke 
execute as @e[type=item,nbt={Item:{Count:32b,id:"minecraft:tnt"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:20b,id:"minecraft:wheat_seeds",tag:{EntityTag:{Tags:["chemicals"]}}}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:10b,id:"minecraft:string"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:20b,id:"minecraft:redstone"}}] if entity @e[type=item_frame,tag=sci_tab,distance=..0.8] if entity @p[distance=..2,scores={class_id=8}] run function the_sirwolf:intern/classes/main/scientist/items/disease_nuke/disease_nuke

# wrench
execute as @e[type=item,nbt={Item:{Count:20b,id:"minecraft:iron_ingot"}}] at @s if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:2b,id:"minecraft:iron_block"}}] if entity @e[type=item_frame,tag=sci_tab,distance=..0.8] if entity @p[distance=..2,scores={class_id=8}] run function the_sirwolf:intern/classes/main/scientist/items/wrench

execute as @a[nbt={Inventory: [{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["wrench"]}}}]}] at @s run scoreboard players operation @e[tag=land_mine,distance=..1] land_mine_livetime_max = NORM_p land_mine_livetime_max
execute as @a[nbt={Inventory: [{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["wrench"]}}}]}] at @s run scoreboard players operation @e[tag=dis_nuke,distance=..1] dis_nuke_livetime_max = NORM_p dis_nuke_livetime_max
execute as @a[nbt={Inventory: [{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["wrench"]}}}]}] at @s run scoreboard players operation @e[tag=dis_nuke,distance=..1] dis_nuke_livetime_warn = NORM_p dis_nuke_livetime_warn

function the_sirwolf:intern/classes/main/scientist/items/land_mine/tick
function the_sirwolf:intern/classes/main/scientist/items/disease_nuke/tick
# science table
execute as @e[type=item_frame,tag=sci_tab,tag=!hasItem] at @s run data modify entity @s Item set value {id:"minecraft:glass_bottle",Count:1b}
execute as @e[type=item_frame,tag=sci_tab,tag=!hasItem] at @s run tag @s add hasItem

execute as @e[type=item_frame,tag=sci_tab] at @s if block ~ ~-1 ~ bookshelf run tag @s add valid
kill @e[type=item_frame,tag=sci_tab,tag=!valid]

# dynamite
function the_sirwolf:intern/classes/main/scientist/items/dynamite/explode/check_explode




# feedback 
execute as @a[scores={class_id=8},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["mag_caul"]}}}}] at @s unless score @s mag_caul_cldw >= @s mag_caul_cldw_max run title @s actionbar [{"score":{"name":"@s","objective":"mag_caul_cldw"}},"/",{"score":{"name":"@s","objective":"mag_caul_cldw_max"}}]

execute as @a[scores={class_id=8},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["mag_caul"]}}}}] at @s if score @s mag_caul_cldw >= @s mag_caul_cldw_max run title @s actionbar {"text":"Cauldron ready!","color": "green"}


#execute as @e[type=potion,tag=exp_pot] at @s if

