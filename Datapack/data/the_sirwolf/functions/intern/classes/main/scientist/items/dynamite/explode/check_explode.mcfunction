##
 # check_explode.mcfunction
 # intern/classes/main/scientist/items/dynamite/explode
 #
 # Created by .
##

execute as @e[type=potion] if data entity @s {Item:{tag:{EntityTag:{Tags:["dynamite"]}}}} at @s unless block ~ ~-0.8 ~ air run function the_sirwolf:intern/classes/main/scientist/items/dynamite/explode/explode_dynamite
execute as @e[type=potion] if data entity @s {Item:{tag:{EntityTag:{Tags:["dynamite"]}}}} at @s unless block ~-0.8 ~ ~ air run function the_sirwolf:intern/classes/main/scientist/items/dynamite/explode/explode_dynamite
execute as @e[type=potion] if data entity @s {Item:{tag:{EntityTag:{Tags:["dynamite"]}}}} at @s unless block ~ ~ ~-0.8 air run function the_sirwolf:intern/classes/main/scientist/items/dynamite/explode/explode_dynamite
execute as @e[type=potion] if data entity @s {Item:{tag:{EntityTag:{Tags:["dynamite"]}}}} at @s unless block ~0.8 ~ ~ air run function the_sirwolf:intern/classes/main/scientist/items/dynamite/explode/explode_dynamite
execute as @e[type=potion] if data entity @s {Item:{tag:{EntityTag:{Tags:["dynamite"]}}}} at @s unless block ~ ~ ~0.8 air run function the_sirwolf:intern/classes/main/scientist/items/dynamite/explode/explode_dynamite

execute as @e[type=potion] if data entity @s {Item:{tag:{EntityTag:{Tags:["dynamite_lvl2"]}}}} at @s unless block ~ ~-0.8 ~ air run function the_sirwolf:intern/classes/main/scientist/items/dynamite/explode/explode_lvl2
execute as @e[type=potion] if data entity @s {Item:{tag:{EntityTag:{Tags:["dynamite_lvl2"]}}}} at @s unless block ~-0.8 ~ ~ air run function the_sirwolf:intern/classes/main/scientist/items/dynamite/explode/explode_lvl2
execute as @e[type=potion] if data entity @s {Item:{tag:{EntityTag:{Tags:["dynamite_lvl2"]}}}} at @s unless block ~ ~ ~-0.8 air run function the_sirwolf:intern/classes/main/scientist/items/dynamite/explode/explode_lvl2
execute as @e[type=potion] if data entity @s {Item:{tag:{EntityTag:{Tags:["dynamite_lvl2"]}}}} at @s unless block ~0.8 ~ ~ air run function the_sirwolf:intern/classes/main/scientist/items/dynamite/explode/explode_lvl2
execute as @e[type=potion] if data entity @s {Item:{tag:{EntityTag:{Tags:["dynamite_lvl2"]}}}} at @s unless block ~ ~ ~0.8 air run function the_sirwolf:intern/classes/main/scientist/items/dynamite/explode/explode_lvl2

execute as @e[type=potion] if data entity @s {Item:{tag:{EntityTag:{Tags:["dynamite_lvl3"]}}}} at @s unless block ~ ~-0.8 ~ air run function the_sirwolf:intern/classes/main/scientist/items/dynamite/explode/explode_lvl3
execute as @e[type=potion] if data entity @s {Item:{tag:{EntityTag:{Tags:["dynamite_lvl3"]}}}} at @s unless block ~-0.8 ~ ~ air run function the_sirwolf:intern/classes/main/scientist/items/dynamite/explode/explode_lvl3
execute as @e[type=potion] if data entity @s {Item:{tag:{EntityTag:{Tags:["dynamite_lvl3"]}}}} at @s unless block ~ ~ ~-0.8 air run function the_sirwolf:intern/classes/main/scientist/items/dynamite/explode/explode_lvl3
execute as @e[type=potion] if data entity @s {Item:{tag:{EntityTag:{Tags:["dynamite_lvl3"]}}}} at @s unless block ~0.8 ~ ~ air run function the_sirwolf:intern/classes/main/scientist/items/dynamite/explode/explode_lvl3
execute as @e[type=potion] if data entity @s {Item:{tag:{EntityTag:{Tags:["dynamite_lvl3"]}}}} at @s unless block ~ ~ ~0.8 air run function the_sirwolf:intern/classes/main/scientist/items/dynamite/explode/explode_lvl3
