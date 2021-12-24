##
 # pill_handler.mcfunction
 # intern/classes/main/medic/items/pills
 #
 # Created by .
##

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["speed_p"]}}}}] run function the_sirwolf:intern/classes/main/medic/items/pills/use/use_speed

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["luck_p"]}}}}] run function the_sirwolf:intern/classes/main/medic/items/pills/use/use_luck

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["reg_p"]}}}}] run function the_sirwolf:intern/classes/main/medic/items/pills/use/use_reg

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["view_p"]}}}}] run function the_sirwolf:intern/classes/main/medic/items/pills/use/use_view


