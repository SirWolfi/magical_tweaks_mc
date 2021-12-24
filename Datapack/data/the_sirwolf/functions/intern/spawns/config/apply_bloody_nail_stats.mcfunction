##
 # apply_bloody_nail_stats.mcfunction
 # intern/spawns/config
 #
 # Created by .
##

scoreboard players set abns_tmp tmp 0
execute if score @s class_id = HACKER class_id run attribute @s generic.max_health base set 16
execute if score @s class_id = HACKER class_id run scoreboard players set abns_tmp tmp 1
execute if score @s class_id = NIGHT_WALKER class_id if score @s pentagram_duration matches 0 run attribute @s generic.max_health base set 16
execute if score @s class_id = NIGHT_WALKER class_id run scoreboard players set abns_tmp tmp 1
execute if score @s class_id = MEDIC class_id run attribute @s generic.max_health base set 14
execute if score @s class_id = MEDIC class_id run scoreboard players set abns_tmp tmp 1
execute if score @s class_id = MAGE class_id run attribute @s generic.max_health base set 12
execute if score @s class_id = MAGE class_id run scoreboard players set abns_tmp tmp 1
execute if score @s class_id = TANK class_id run effect give @s nausea 3 1 true
#execute if score @s class_id = TANK class_id run attribute @s generic.max_health base set 18
#execute if score @s class_id = TANK class_id run scoreboard players set abns_tmp tmp 1
execute if score @s class_id = SCIENTIST class_id if score @s heart_conv_duration matches 0 run attribute @s generic.max_health base set 16
execute if score @s class_id = SCIENTIST class_id if score @s heart_conv_duration matches 0 run scoreboard players set abns_tmp tmp 1

#execute if score @s class_id = SCIENTIST class_id unless score @s heart_conv_duration matches 0 run scoreboard players set abns_tmp tmp 2

execute if score abns_tmp tmp matches 0 run attribute @s generic.max_health base set 16
scoreboard players reset abns_tmp tmp

effect give @s strength 2 0 true


