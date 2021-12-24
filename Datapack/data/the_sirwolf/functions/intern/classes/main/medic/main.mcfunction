##
 # main.mcfunction
 # intern/classes/main/medic
 #
 # Created by The_SirWolf
##

# settings
execute as @a[scores={class_id=3}] at @s run attribute @s generic.max_health base set 16
execute as @a[scores={class_id=3}] at @s run attribute @s generic.attack_damage base set 0.7
execute as @a[scores={class_id=8}] at @s run attribute @s generic.movement_speed base set 0.12

#effect give @a[scores={class_id=3}] regeneration 3 2 true

execute as @a if score @s class_id = MEDIC class_id if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["staff_oc"]}}}}] run scoreboard players add @s staff_oc_cldw 1
execute as @a[scores={class_id=3}] if score @s staff_oc_cldw >= @s staff_oc_cldw_max run scoreboard players operation @s staff_oc_cldw = @s staff_oc_cldw_max

execute as @a if score @s class_id = MEDIC class_id if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["staff_oh"]}}}}] run scoreboard players add @s staff_oh_cldw 1
execute as @a[scores={class_id=3}] if score @s staff_oh_cldw >= @s staff_oh_cldw_max run scoreboard players operation @s staff_oh_cldw = @s staff_oh_cldw_max

# things also charge when you equip the pacifinomicron
execute as @a if score @s class_id = MEDIC class_id if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["pacifi"]}}}]}] run scoreboard players add @s staff_oc_cldw 1
execute as @a if score @s class_id = MEDIC class_id if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["pacifi"]}}}]}] run scoreboard players add @s staff_oh_cldw 1


# crafting
execute as @a[scores={class_id=3}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:10b,id:"minecraft:redstone",tag:{EntityTag:{Tags:["blood"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:2b,id:"minecraft:glass"}}] if entity @e[tag=medic_tab,distance=..0.6] if entity @p[scores={class_id=3},distance=..2] run function the_sirwolf:intern/classes/main/medic/items/emergency_syringe
execute as @a[scores={class_id=3}] at @s run execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:redstone_block"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:10b,id:"minecraft:glass"}}] run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:5b,id:"minecraft:iron_ingot"}}] if entity @e[tag=crafter,distance=..0.6] run function the_sirwolf:intern/classes/main/medic/mecician_table

execute as @a[scores={class_id=3}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:2b,id:"minecraft:stick",tag:{EntityTag:{Tags:["strong_stick"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:gold_ingot"}}] run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:amethyst_shard",tag:{EntityTag:{Tags:["color_crystal"]}}}}] run execute if entity @e[tag=medic_tab,distance=..0.6] if entity @p[scores={class_id=3},distance=..2] run function the_sirwolf:intern/classes/main/medic/items/staff_of_clearence
execute as @a[scores={class_id=3}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:5b,id:"minecraft:redstone",tag:{EntityTag:{Tags:["blood"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:glass_bottle"}}] if entity @e[tag=medic_tab,distance=..0.6] if entity @p[scores={class_id=3},distance=..2] run function the_sirwolf:intern/spawns/bottle_o_blood
execute as @a[scores={class_id=3}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:2b,id:"minecraft:stick",tag:{EntityTag:{Tags:["strong_stick"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:gold_ingot"}}] run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:totem_of_undying"}}] run execute if entity @e[tag=medic_tab,distance=..0.6] if entity @p[scores={class_id=3},distance=..2] run function the_sirwolf:intern/classes/main/medic/items/staff_of_healing

execute as @a[scores={class_id=3}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:1b,id:"minecraft:chicken"}}] at @s if entity @e[tag=medic_tab,distance=..0.6] run function the_sirwolf:intern/spawns/blood_pf
execute as @a[scores={class_id=3}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:1b,id:"minecraft:beef"}}] at @s if entity @e[tag=medic_tab,distance=..0.6] run function the_sirwolf:intern/spawns/blood_pf
execute as @a[scores={class_id=3}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:1b,id:"minecraft:rabbit"}}] at @s if entity @e[tag=medic_tab,distance=..0.6] run function the_sirwolf:intern/spawns/blood_pf
execute as @a[scores={class_id=3}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:1b,id:"minecraft:porkchop"}}] at @s if entity @e[tag=medic_tab,distance=..0.6] run function the_sirwolf:intern/spawns/blood_pf
execute as @a[scores={class_id=3}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:1b,id:"minecraft:mutton"}}] at @s if entity @e[tag=medic_tab,distance=..0.6] run function the_sirwolf:intern/spawns/blood_pf

execute as @a[scores={class_id=3}] at @s run execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:redstone_block"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:20b,id:"minecraft:paper"}}] run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:ender_eye"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:20b,id:"minecraft:redstone",tag:{EntityTag:{Tags:["blood"]}}}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:10b,id:"minecraft:wheat_seeds",tag:{EntityTag:{Tags:["bio_probe"]}}}}] if entity @e[tag=medic_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/medic/items/hypocratic_stick


# pills
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["norm_p"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:2b,id:"minecraft:rabbit_foot"}}] run execute if entity @e[tag=medic_tab,distance=..0.6] if entity @p[scores={class_id=3},distance=..2] run function the_sirwolf:intern/classes/main/medic/items/pills/luck_pill
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["norm_p"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:10b,id:"minecraft:sugar"}}] run execute if entity @e[tag=medic_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/medic/items/pills/speed_pill
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["norm_p"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:honeycomb"}}] run execute if entity @e[tag=medic_tab,distance=..0.6] if entity @p[scores={class_id=3},distance=..2] run function the_sirwolf:intern/classes/main/medic/items/pills/reg_pill
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["norm_p"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:glass_pane"}}] run execute if entity @e[tag=medic_tab,distance=..0.6] if entity @p[scores={class_id=3},distance=..2] run function the_sirwolf:intern/classes/main/medic/items/pills/view_pill

execute as @e[type=item,nbt={Item:{Count:2b,id:"minecraft:paper"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:milk_bucket"}}] run execute if entity @e[tag=medic_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/medic/items/pills/nomral_pill

# pacifinomicron
execute as @a[scores={class_id=3}] at @s run execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:writable_book"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:64b,id:"minecraft:redstone",tag:{EntityTag:{Tags:["blood"]}}}}] if entity @e[tag=medic_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/medic/items/pacifinomicron

execute as @a[scores={class_id=3},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["pacifi"]}}}]}] run scoreboard players operation @s staff_oc_cldw_max = NORM_p staff_oc_cldw_max
execute as @a[scores={class_id=3},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["pacifi"]}}}]}] run scoreboard players operation @s staff_oh_cldw_max = NORM_p staff_oh_cldw_max

execute as @a[scores={class_id=3},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["pacifi"]}}}]}] run scoreboard players operation @s staff_oc_cldw_max = MAX_cldw staff_oc_cldw_max
execute as @a[scores={class_id=3},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["pacifi"]}}}]}] run scoreboard players operation @s staff_oh_cldw_max = MAX_cldw staff_oh_cldw_max

execute as @a[scores={class_id=3},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["pacifi"]}}}]}] run effect give @s weakness 1 250 true

# staff feedback
execute as @a[scores={class_id=3},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["staff_oc"]}}}}] at @s unless score @s staff_oc_cldw >= @s staff_oc_cldw_max run title @s actionbar [{"score":{"name":"@s","objective":"staff_oc_cldw"}},"/",{"score":{"name":"@s","objective":"staff_oc_cldw_max"}}]
execute as @a[scores={class_id=3},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["staff_oh"]}}}}] at @s unless score @s staff_oh_cldw >= @s staff_oh_cldw_max run title @s actionbar [{"score":{"name":"@s","objective":"staff_oh_cldw"}},"/",{"score":{"name":"@s","objective":"staff_oh_cldw_max"}}]

execute as @a[scores={class_id=3},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["staff_oc"]}}}}] at @s if score @s staff_oc_cldw >= @s staff_oc_cldw_max run title @s actionbar {"text":"Clearspell ready!","color": "white"}
execute as @a[scores={class_id=3},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["staff_oh"]}}}}] at @s if score @s staff_oh_cldw >= @s staff_oh_cldw_max run title @s actionbar {"text":"Healspell ready!","color": "red"}

execute as @a[scores={class_id=3},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["hyp_thou"]}},Slot:-106b}]}] at @s run title @s actionbar [{"text": "Hp: ","color": "red"},{"score":{"name":"@p[distance=0.2..10]","objective": "health"}}]

# mecician_table
execute as @e[type=item_frame,tag=medic_tab,tag=!hasItem] at @s run data modify entity @s Item set value {id:"minecraft:red_dye",Count:1b}
execute as @e[type=item_frame,tag=medic_tab,tag=!hasItem] at @s run tag @s add hasItem

execute as @e[type=item_frame,tag=medic_tab] at @s if block ~ ~-1 ~ redstone_block run tag @s add valid
kill @e[type=item_frame,tag=medic_tab,tag=!valid]
