##
 # check_if_invis.mcfunction
 # intern/classes/main/night_walker
 #
 # Created by .
##

execute as @a[scores={class_id=7},nbt={Inventory: [{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["book_o_s"]}}}]}] at @s if score @s blood_cldw >= MAX_cldw_m1 blood_cldw if score @s got_hurt > c0 variables run effect give @s weakness 5 250 true


execute as @a[scores={class_id=7,enable_shadow_mode=1}] at @s run execute if score @s was_inactive matches 1 run scoreboard players add @s blood_cldw 1
execute as @a[scores={class_id=7}] at @s run execute if score @s was_inactive matches 0 run scoreboard players set @s blood_cldw 0

execute as @a[scores={class_id=7,enable_shadow_mode=1}] at @s run execute if score @s blood_cldw >= MAX_cldw blood_cldw run function the_sirwolf:intern/classes/main/night_walker/invis
execute as @a[scores={class_id=7}] at @s run execute if score @s blood_cldw >= MAX_cldw blood_cldw run scoreboard players operation @s blood_cldw = MAX_cldw blood_cldw