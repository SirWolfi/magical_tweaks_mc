##
 # use_psy_hack.mcfunction
 # intern/classes/main/hacker/items
 #
 # Created by .
##

scoreboard players set tmp variables 0

execute if data entity @s[type=player] {foodLevel:0} run scoreboard players set tmp variables 1
execute unless score @s class_id = HACKER class_id run scoreboard players set tmp variables 2

execute if score tmp variables matches 0 run effect give @s hunger 2 100 true
execute if score tmp variables matches 0 run playsound minecraft:block.portal.travel master @a
execute if score tmp variables matches 0 run execute as @s at @s run function the_sirwolf:intern/classes/main/hacker/items/psy_hack/set

execute if score tmp variables matches 2 run clear @s carrot_on_a_stick{EntityTag:{Tags:["psy_hack"]}} 1

scoreboard players set tmp variables 0