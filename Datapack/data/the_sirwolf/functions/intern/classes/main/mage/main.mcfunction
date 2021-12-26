##
 # main.mcfunction
 # intern/classes/main/mage
 #
 # Created by .
##

# settings
execute as @a[scores={class_id=2}] at @s run attribute @s generic.max_health base set 14
execute as @a[scores={class_id=2}] at @s run attribute @s generic.attack_damage base set 1.2
execute as @a[scores={class_id=8}] at @s run attribute @s generic.movement_speed base set 0.1

scoreboard players add @a[scores={class_id=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["storm_wand"]}}}}] bold_cldw 1
execute as @a[scores={class_id=2}] if score @s bold_cldw >= MAX_cldw bold_cldw run scoreboard players operation @s bold_cldw = MAX_cldw_m1 bold_cldw
scoreboard players add @a[scores={class_id=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["ice_wand"]}}}}] ice_cldw 1
execute as @a[scores={class_id=2}] if score @s ice_cldw >= MAX_cldw ice_cldw run scoreboard players operation @s ice_cldw = MAX_cldw_m1 ice_cldw
scoreboard players add @a[scores={class_id=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["fire_wand"]}}}}] fire_cldw 1
execute as @a[scores={class_id=2}] if score @s fire_cldw >= MAX_cldw fire_cldw run scoreboard players operation @s fire_cldw = MAX_cldw fire_cldw
scoreboard players add @a[scores={class_id=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["blood_wand"]}}}}] blood_wand_cldw 1
execute as @a[scores={class_id=2}] if score @s blood_wand_cldw >= MAX_cldw blood_wand_cldw run scoreboard players operation @s blood_wand_cldw = MAX_cldw blood_wand_cldw

scoreboard players add @a[scores={class_id=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["ring_o_tran"]}}}}] ring_o_tran_cldw 1
execute as @a[scores={class_id=2}] if score @s ring_o_tran_cldw >= MAX_cldw ring_o_tran_cldw run scoreboard players operation @s ring_o_tran_cldw = MAX_cldw ring_o_tran_cldw

execute as @e[type=item,nbt={Item:{Count:20b,id:"minecraft:glass"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:10b,id:"minecraft:gold_ingot"}}] if entity @e[tag=crafter,distance=..0.6] run function the_sirwolf:intern/classes/main/mage/magical_crystal

# crafting
execute as @a[scores={class_id=2}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:5b,id:"minecraft:blaze_powder"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:lava_bucket"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:3b,id:"minecraft:fire_charge"}}] if entity @e[tag=mage_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/mage/items/fire_orb
execute as @a[scores={class_id=2}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:1b,id:"minecraft:purple_dye",tag:{EntityTag:{Tags:["fire_orb"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:2b,id:"minecraft:stick",tag:{EntityTag:{Tags:["strong_stick"]}}}}] if entity @e[tag=mage_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/mage/items/fire_wand

execute as @a[scores={class_id=2}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:10b,id:"minecraft:blue_ice"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:water_bucket"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:16b,id:"minecraft:snowball"}}] if entity @e[tag=mage_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/mage/items/ice_orb
execute as @a[scores={class_id=2}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:1b,id:"minecraft:purple_dye",tag:{EntityTag:{Tags:["ice_orb"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:2b,id:"minecraft:stick",tag:{EntityTag:{Tags:["strong_stick"]}}}}] if entity @e[tag=mage_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/mage/items/ice_wand

execute as @a[scores={class_id=2}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:1b,id:"minecraft:purple_dye",tag:{EntityTag:{Tags:["ice_orb"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:purple_dye",tag:{EntityTag:{Tags:["fire_orb"]}}}}] if entity @e[tag=mage_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/mage/items/strange_orb
execute as @a[scores={class_id=2}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:1b,id:"minecraft:purple_dye",tag:{EntityTag:{Tags:["strange_orb"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:2b,id:"minecraft:stick",tag:{EntityTag:{Tags:["strong_stick"]}}}}] if entity @e[tag=mage_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/mage/items/wand_of_the_void

execute as @a[scores={class_id=2}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:23b,id:"minecraft:amethyst_shard",tag:{EntityTag:{Tags:["storm_shard"]}}}}] at @s if entity @e[tag=mage_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/mage/items/storm_orb
execute as @a[scores={class_id=2}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:1b,id:"minecraft:purple_dye",tag:{EntityTag:{Tags:["storm_orb"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:2b,id:"minecraft:stick",tag:{EntityTag:{Tags:["strong_stick"]}}}}] if entity @e[tag=mage_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/mage/items/storm_wand

execute as @a[scores={class_id=2}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:1b,id:"minecraft:purple_dye",tag:{EntityTag:{Tags:["strange_orb"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["ring_f"]}}}}] if entity @e[tag=mage_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/mage/items/ring_of_tranquillity

execute as @a[scores={class_id=2}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:30b,id:"minecraft:redstone",tag:{EntityTag:{Tags:["blood"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:64b,id:"minecraft:bone"}}] if entity @e[tag=mage_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/mage/items/blood_wand


# book of greed
execute as @a[scores={class_id=2}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:1b,id:"minecraft:purple_dye",tag:{EntityTag:{Tags:["storm_orb"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:writable_book"}}] if entity @e[tag=mage_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/mage/items/book_of_greed

execute as @a[scores={class_id=2},nbt={Inventory: [{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["book_o_g"]}}}]}] at @s if score @s got_hurt > c0 variables run effect give @s saturation 1 1 true

# other
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["ice_wand"]}}}}] at @s run execute as @e[distance=1..5] at @s run execute if block ~ ~ ~ snow run effect give @s slowness 3 2 false

#execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["storm_wand"]}}}}] run function the_sirwolf:intern/classes/main/mage/items/use_storm_wand

#execute positioned 0 0 0 as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["wand_of_the_void"]}}}},y=0] at @s in the_end run execute as @p run function the_sirwolf:intern/classes/main/mage/items/wand_of_the_ultimate_void
#execute positioned 0 0 0 as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["wand_of_the_void"]}}}},y=0] at @s in the_end run kill @s

execute as @e[type=item_frame,tag=mage_tab,tag=!hasItem] at @s run data modify entity @s Item set value {id:"minecraft:amethyst_cluster",Count:1b}
execute as @e[type=item_frame,tag=mage_tab,tag=!hasItem] at @s run tag @s add hasItem
execute as @e[type=item_frame,tag=mage_tab] at @s if block ~ ~-1 ~ magma_block run tag @s add valid
kill @e[type=item_frame,tag=mage_tab,tag=!valid]

function the_sirwolf:intern/classes/main/mage/items/bullets/fire_ball_tick
function the_sirwolf:intern/classes/main/mage/items/bullets/blood_line_tick

#show cooldown

execute as @a[scores={class_id=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["ice_wand"]}}}}] at @s unless score @s ice_cldw >= MAX_cldw_m1 ice_cldw run title @s actionbar [{"score":{"name":"@s","objective":"ice_cldw"}},"/",{"score":{"name":"MAX_cldw","objective":"ice_cldw"}}]
execute as @a[scores={class_id=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["storm_wand"]}}}}] at @s unless score @s bold_cldw >= MAX_cldw_m1 bold_cldw run title @s actionbar [{"score":{"name":"@s","objective":"bold_cldw"}},"/",{"score":{"name":"MAX_cldw","objective":"bold_cldw"}}]
execute as @a[scores={class_id=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["fire_wand"]}}}}] at @s unless score @s fire_cldw >= MAX_cldw_m1 fire_cldw run title @s actionbar [{"score":{"name":"@s","objective":"fire_cldw"}},"/",{"score":{"name":"MAX_cldw","objective":"fire_cldw"}}]
execute as @a[scores={class_id=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["ring_o_tran"]}}}}] at @s unless score @s ring_o_tran_cldw >= MAX_cldw_m1 ring_o_tran_cldw run title @s actionbar [{"score":{"name":"@s","objective":"ring_o_tran_cldw"}},"/",{"score":{"name":"MAX_cldw","objective":"ring_o_tran_cldw"}}]
execute as @a[scores={class_id=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["blood_wand"]}}}}] at @s unless score @s blood_wand_cldw >= MAX_cldw blood_wand_cldw run title @s actionbar [{"score":{"name":"@s","objective":"blood_wand_cldw"}},"/",{"score":{"name":"MAX_cldw","objective":"blood_wand_cldw"}}]


execute as @a[scores={class_id=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["ice_wand"]}}}}] at @s if score @s ice_cldw >= MAX_cldw_m1 ice_cldw run title @s actionbar {"text":"Icespell ready!","color": "dark_blue"}
execute as @a[scores={class_id=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["storm_wand"]}}}}] at @s if score @s bold_cldw >= MAX_cldw_m1 bold_cldw run title @s actionbar {"text":"Stormspell ready!","color": "blue"}
execute as @a[scores={class_id=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["fire_wand"]}}}}] at @s if score @s fire_cldw >= MAX_cldw fire_cldw run title @s actionbar {"text":"Firespell ready!","color": "red"}
execute as @a[scores={class_id=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["ring_o_tran"]}}}}] at @s if score @s ring_o_tran_cldw >= MAX_cldw ring_o_tran_cldw run title @s actionbar {"text":"Ring ready!","color": "dark_gray"}
execute as @a[scores={class_id=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["blood_wand"]}}}}] at @s if score @s blood_wand_cldw >= MAX_cldw blood_wand_cldw run title @s actionbar {"text":"Bloodspell ready!","color": "dark_red"}
