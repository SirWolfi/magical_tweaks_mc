##
 # main.mcfunction
 # intern/classes/main/night_walker
 #
 # Created by .
##

# settings
execute as @a[scores={class_id=7}] at @s run attribute @s generic.max_health base set 20
execute as @a[scores={class_id=7}] at @s run attribute @s generic.attack_damage base set 1
execute as @a[scores={class_id=7}] at @s run attribute @s generic.movement_speed base set 0.1
#crafting

#execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:dirt"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:2b,id:"minecraft:grass_block"}}] run function the_sirwolf:intern/spawns/debug

#other shiet i do by godness sake not understand
execute as @a[scores={class_id=7,did_hit=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{EntityTag:{Tags:["night_bl"]}}}}] at @s if score @s inf_blood_cldw >= MAX_cldw inf_blood_cldw run execute as @e[distance=0.2..2.7] run scoreboard players set @s bleeding_cldw 1
execute as @a[scores={class_id=7,did_hit=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{EntityTag:{Tags:["night_bl"]}}}}] at @s if score @s inf_blood_cldw >= MAX_cldw inf_blood_cldw run scoreboard players set @s inf_blood_cldw 0

execute as @a[scores={class_id=7,did_hit=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{EntityTag:{Tags:["night_bl_lvl2"]}}}}] at @s if score @s inf_blood_cldw >= MAX_cldw inf_blood_cldw run execute as @e[distance=0.2..2.7] run scoreboard players set @s bleeding_cldw 1
execute as @a[scores={class_id=7,did_hit=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{EntityTag:{Tags:["night_bl_lvl2"]}}}}] at @s if score @s inf_blood_cldw >= MAX_cldw inf_blood_cldw run scoreboard players set @s inf_blood_cldw 0


execute as @e[scores={bleeding_cldw=1..}] at @s run scoreboard players operation @s tmp = @s bleeding_cldw
execute as @e[scores={bleeding_cldw=1..}] at @s run scoreboard players operation @s tmp %= c10 variables

execute as @e[scores={bleeding_cldw=1..}] at @s if score @s tmp matches 0 run function the_sirwolf:intern/classes/main/night_walker/inflict_bleed
execute as @e[scores={bleeding_cldw=1..}] at @s if score @s bleeding_cldw >= MAX_cldw bleeding_cldw run scoreboard players set @s bleeding_cldw 0

execute as @e[scores={bleeding_cldw=1..}] at @s run scoreboard players add @s bleeding_cldw 1

scoreboard players add @a[scores={class_id=7}] throw_s_cldw 1
execute as @a[scores={class_id=7}] at @s if score @s throw_s_cldw >= MAX_cldw throw_s_cldw run scoreboard players operation @s throw_s_cldw = MAX_cldw_m1 throw_s_cldw

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["pentagram"]}}}}] if score @s class_id = NIGHT_WALKER class_id at @s run scoreboard players add @s pentagram_cldw 1
execute as @a[scores={class_id=7}] at @s if score @s pentagram_cldw >= MAX_cldw pentagram_cldw run scoreboard players operation @s pentagram_cldw = MAX_cldw pentagram_cldw


function the_sirwolf:intern/classes/main/night_walker/check_if_invis

scoreboard players add @a[scores={class_id=7},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{EntityTag:{Tags:["night_bl"]}}}}] inf_blood_cldw 1
execute as @a[scores={class_id=7},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{EntityTag:{Tags:["night_bl"]}}}}] at @s if score @s inf_blood_cldw >= MAX_cldw inf_blood_cldw run scoreboard players operation @s inf_blood_cldw = MAX_cldw inf_blood_cldw
scoreboard players add @a[scores={class_id=7},nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{EntityTag:{Tags:["night_bl_lvl2"]}}}}] inf_blood_cldw 1
execute as @a[scores={class_id=7},nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{EntityTag:{Tags:["night_bl_lvl2"]}}}}] at @s if score @s inf_blood_cldw >= MAX_cldw inf_blood_cldw run scoreboard players operation @s inf_blood_cldw = MAX_cldw inf_blood_cldw


execute as @a[scores={class_id=7},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["edotensai"]}}}}] at @s if score @s edo_cldw >= MAX_cldw_m1 edo_cldw run scoreboard players operation @s edo_cldw = MAX_cldw_m1 edo_cldw

execute as @a[scores={class_id=7},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["edotensai"]}}}}] at @s if score @s edo_cldw >= MAX_cldw_m1 edo_cldw run scoreboard players operation @s edo_cldw = MAX_cldw_m1 edo_cldw


execute as @e[type=armor_stand,tag=night_sh_ent] at @s run function the_sirwolf:intern/classes/main/night_walker/other/move_shuricen

execute as @e[type=armor_stand,tag=shurc_ent] at @s run function the_sirwolf:intern/classes/main/night_walker/other/move_normal_shuricen

# pentagram
execute as @a[scores={pentagram_duration=1..}] if score @s class_id = NIGHT_WALKER class_id run scoreboard players add @s pentagram_duration 1
execute as @a[scores={pentagram_duration=1..}] if score @s class_id = NIGHT_WALKER class_id run effect give @s speed 1 2 true
execute as @a[scores={pentagram_duration=1..}] if score @s class_id = NIGHT_WALKER class_id run effect give @s strength 1 2 true
execute as @a[scores={pentagram_duration=1..}] if score @s class_id = NIGHT_WALKER class_id run effect give @s jump_boost 1 2 true
execute as @a[scores={pentagram_duration=1..}] if score @s class_id = NIGHT_WALKER class_id run attribute @s generic.max_health base set 4
execute as @a[scores={pentagram_duration=1..}] at @s if score @s class_id = NIGHT_WALKER class_id run particle dust 0.322 0.016 0.016 1 ~ ~ ~ 0.5 0.5 0.5 0.01 25 
execute as @a[scores={pentagram_duration=1..,deaths=1..}] if score @s class_id = NIGHT_WALKER class_id run scoreboard players set @s pentagram_duration 0

execute as @a[scores={pentagram_duration=1..}] if score @s class_id = NIGHT_WALKER class_id if score @s pentagram_duration >= MAX pentagram_duration at @s run function the_sirwolf:intern/classes/main/night_walker/items/end_pentagram_mode

execute as @a[scores={class_id=7},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["pentagram"]}}}}] at @s if score @s pentagram_cldw >= MAX_cldw pentagram_cldw run scoreboard players operation @s pentagram_cldw = MAX_cldw pentagram_cldw

execute as @a[scores={pentagram_duration=1..}] if score @s class_id = NIGHT_WALKER class_id run scoreboard players set @s blood_cldw 0


#crafting
execute as @a[scores={class_id=7}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:1b,id:"minecraft:ink_sac"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:coal_block"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:crying_obsidian"}}] if entity @e[tag=mage_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/night_walker/items/shadow_essence
execute as @a[scores={class_id=7}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:15b,id:"minecraft:black_dye",tag:{EntityTag:{Tags:["dark_ess"]}}}}] at @s if entity @e[tag=mage_tab,distance=..0.6] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:stick",tag:{EntityTag:{Tags:["strong_stick"]}}}}] if entity @e[tag=mage_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/night_walker/items/midnights_blade

execute as @a[scores={class_id=7}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:20b,id:"minecraft:black_dye",tag:{EntityTag:{Tags:["dark_ess"]}}}}] at @s if entity @e[tag=mage_tab,distance=..0.6] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["shurc"]}}}}] if entity @e[tag=mage_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/night_walker/items/shuricen_bullet
execute as @a[scores={class_id=7}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:1b,id:"minecraft:black_dye",tag:{EntityTag:{Tags:["dark_ess"]}}}}] at @s if entity @e[tag=mage_tab,distance=..0.6] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:12b,id:"minecraft:iron_ingot"}}] if entity @e[tag=mage_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/night_walker/items/shuricen

execute as @a[scores={class_id=7}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:20b,id:"minecraft:black_dye",tag:{EntityTag:{Tags:["dark_ess"]}}}}] at @s if entity @e[tag=mage_tab,distance=..0.6] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:writable_book"}}] if entity @e[tag=mage_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/night_walker/items/book_of_sins

execute as @a[scores={class_id=7}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:30b,id:"minecraft:black_dye",tag:{EntityTag:{Tags:["dark_ess"]}}}}] at @s if entity @e[tag=mage_tab,distance=..0.6] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:iron_sword",tag:{EntityTag:{Tags:["night_bl"]}}}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:diamond"}}] if entity @e[tag=mage_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/night_walker/items/midnights_blade_lvl2

execute as @a[scores={class_id=7}] at @s run execute as @e[distance=..2,type=item,nbt={Item:{Count:30b,id:"minecraft:black_dye",tag:{EntityTag:{Tags:["dark_ess"]}}}}] at @s if entity @e[tag=mage_tab,distance=..0.6] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:30b,id:"minecraft:redstone",tag:{EntityTag:{Tags:["blood"]}}}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:30b,id:"minecraft:bone"}}] if entity @e[tag=mage_tab,distance=..0.6] run function the_sirwolf:intern/classes/main/night_walker/items/midnights_blade_lvl2


#smoke mode
#execute as @a[scores={class_id=7},scores={sneak=1..,smoke_mode=0},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{EntityTag:{Tags:["night_bl"]}}}}] at @s run scoreboard players set @s smoke_mode 1
#execute as @a[scores={class_id=7},scores={sneak=1..,smoke_mode=0},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{EntityTag:{Tags:["night_bl"]}}}}] at @s run scoreboard players set @s smoke_mode 1

#cooldown show
execute as @a[scores={class_id=7},nbt={SelectedItem:{id:"minecraft:iron_sword",Count:1b,tag:{EntityTag:{Tags:["night_bl"]}}}}] at @s if score @s inf_blood_cldw >= MAX_cldw inf_blood_cldw run title @s actionbar {"text":"Bleeding ready!","color": "red"}
execute as @a[scores={class_id=7},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{EntityTag:{Tags:["night_bl_lvl2"]}}}}] at @s if score @s inf_blood_cldw >= MAX_cldw inf_blood_cldw run title @s actionbar {"text":"Bleeding ready!","color": "red"}

execute as @a[scores={class_id=7},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["pentagram"]}}}}] at @s unless score @s pentagram_cldw >= MAX_cldw pentagram_cldw run title @s actionbar [{"score":{"name":"@s","objective":"pentagram_cldw"}},"/",{"score":{"name":"MAX_cldw","objective":"pentagram_cldw"}}]

execute as @a[scores={class_id=7},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["pentagram"]}}}}] at @s if score @s pentagram_cldw >= MAX_cldw pentagram_cldw run title @s actionbar {"text":"Satan will accept you offer!","color": "dark_red","bold":true}

execute as @a[scores={toggle_shadow_mode=1..}] if score @s class_id = NIGHT_WALKER class_id at @s run function the_sirwolf:intern/classes/main/night_walker/bin/disable_night_mode

#execute as @e[tag=edo_tomb] at @s run function the_sirwolf:intern/classes/main/night_walker/other/edotens_tomb_tick
#execute as @e[tag=edo_ent] at @s run function the_sirwolf:intern/classes/main/night_walker/other/edo_ent_tick
#execute as @e[tag=edo_ent_1_hbull] at @s run function the_sirwolf:intern/classes/main/night_walker/other/edo_ent/bullets/homing_bullet_tick
