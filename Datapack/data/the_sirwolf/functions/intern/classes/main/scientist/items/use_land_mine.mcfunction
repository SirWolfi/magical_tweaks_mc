##
 # use_land_mine.mcfunction
 # intern/classes/main/scientist/items
 #
 # Created by .
##

scoreboard players set tmp variables 0

execute unless score @s class_id = SCIENTIST class_id run scoreboard players set tmp variables 2

execute if score tmp variables matches 0 run playsound block.beacon.activate master @a
execute if score tmp variables matches 0 run particle campfire_cosy_smoke ~ ~ ~ 0.3 1 0.3 0.01 10

execute if score tmp variables matches 0 run function the_sirwolf:intern/classes/main/scientist/items/land_mine/set

execute if score tmp variables matches 0 unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air

scoreboard players set tmp variables 0
