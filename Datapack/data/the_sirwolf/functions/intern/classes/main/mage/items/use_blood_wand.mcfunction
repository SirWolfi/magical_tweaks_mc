##
 # use_blood_wand.mcfunction
 # intern/classes/main/mage/items
 #
 # Created by .
##

scoreboard players set tmp variables 0

execute unless data entity @s[type=player] {Inventory:[{id:"minecraft:redstone",tag:{EntityTag:{Tags:["blood"]}}}]} run scoreboard players set tmp variables 1

execute unless score @s blood_wand_cldw >= MAX_cldw blood_wand_cldw run scoreboard players set tmp variables 3

execute unless score @s class_id = MAGE class_id run scoreboard players set tmp variables 2

execute if score tmp variables matches 0 run effect give @s hunger 2 40 true
execute if score tmp variables matches 0 run playsound entity.ghast.shoot master @a
execute if score tmp variables matches 0 run particle dust 0.247 0.004 0.016 1 ~ ~ ~ 0.1 0.6 0.1 0.01 10

execute if score tmp variables matches 0 run function the_sirwolf:intern/classes/main/mage/items/bullets/blood_line

execute if score tmp variables matches 0 run scoreboard players set @s blood_wand_cldw 0

execute if score tmp variables matches 0 run clear @s redstone{EntityTag:{Tags:["blood"]}} 1

execute if score tmp variables matches 2 run function the_sirwolf:intern/bin/not_for_your_class_error

execute if score tmp variables matches 1 run title @s title {"text": "","color": ""}
execute if score tmp variables matches 1 run title @s subtitle {"text": "You don't have enough blood!","color": "red"}

scoreboard players set tmp variables 0
