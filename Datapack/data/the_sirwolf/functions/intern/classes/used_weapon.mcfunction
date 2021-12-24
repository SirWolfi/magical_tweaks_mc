##
 # used_weapon.mcfunction
 # intern/classes
 #
 # Created by .
##

#call here all the functions from the classes items

execute if score onSec variables matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["knive"]}}}}] run function the_sirwolf:intern/spawns/blood

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["emergency_syringe"]}}}}] run effect give @s instant_health 1 20
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["emergency_syringe"]}}}}] run clear @s carrot_on_a_stick{EntityTag:{Tags:["emergency_syringe"]}} 1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["clearing_syringe"]}}}}] run function the_sirwolf:intern/bin/clear_bad_effects
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["clearing_syringe"]}}}}] run clear @s carrot_on_a_stick{EntityTag:{Tags:["clearing_syringe"]}} 1


execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["staff_oh"]}}}}] run function the_sirwolf:intern/classes/main/medic/items/use_staff_of_healing

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["staff_oc"]}}}}] run function the_sirwolf:intern/classes/main/medic/items/use_staff_of_clearence

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["fire_wand"]}}}}] run function the_sirwolf:intern/classes/main/mage/items/use_fire_wand

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["ice_wand"]}}}}] run function the_sirwolf:intern/classes/main/mage/items/use_ice_wand

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["wand_of_the_void"]}}}}] run function the_sirwolf:intern/classes/main/mage/items/use_wand_of_the_void

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["storm_wand"]}}}}] run function the_sirwolf:intern/classes/main/mage/items/use_storm_wand

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["sh_os"]}}}}] run function the_sirwolf:intern/classes/main/tank/items/use_shield_of_savety

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["night_sh"]}}}}] run function the_sirwolf:intern/classes/main/night_walker/items/use_shuricen

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["shurc"]}}}}] run function the_sirwolf:intern/classes/main/night_walker/items/use_normal_shuricen

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["edotensai"]}}}}] run function the_sirwolf:intern/classes/main/night_walker/items/use_edotansai

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["terminal"]}}}}] run function the_sirwolf:intern/classes/main/hacker/interface/terminal_menue

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["psy_hack"]}}}}] run function the_sirwolf:intern/classes/main/hacker/items/use_psy_hack

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["glider"]}}}}] run function the_sirwolf:intern/spawns/config/use_glider_boost

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["lazer"]}}}}] run function the_sirwolf:intern/classes/main/hacker/items/lazer/used_lazer

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["ring_o_tran"]}}}}] run function the_sirwolf:intern/classes/main/mage/items/use_ring_of_tranquillity

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["mag_caul"]}}}}] run function the_sirwolf:intern/classes/main/scientist/items/use_magical_cauldron

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["land_mine"]}}}}] run function the_sirwolf:intern/classes/main/scientist/items/use_land_mine

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["dis_nuke_s"]}}}}] run function the_sirwolf:intern/classes/main/scientist/items/disease_nuke/use_dis_nuke

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["pentagram"]}}}}] run function the_sirwolf:intern/classes/main/night_walker/items/use_pentagram


# handles medic-pills
function the_sirwolf:intern/classes/main/medic/items/pills/pill_handler