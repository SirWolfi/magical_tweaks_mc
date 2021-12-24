##
 # use_storm_wand.mcfunction
 # intern/classes/main/mage/items
 #
 # Created by .
##

scoreboard players set tmp variables 0

execute if score @s bold_cldw < MAX_cldw_m1 bold_cldw run scoreboard players set tmp variables 3

execute if data entity @s[type=player] {foodLevel:0} run scoreboard players set tmp variables 1

execute unless score @s class_id = MAGE class_id run scoreboard players set tmp variables 2

execute if score tmp variables matches 0 run effect give @s hunger 2 110 true

execute if score tmp variables matches 0 run tag @e[limit=3,sort=random,distance=1..30,type=!armor_stand,type=!item_frame,type=!boat,type=!minecart,type=!chest_minecart,type=!painting,type=!tnt_minecart,type=!item] add storm_me
execute if score tmp variables matches 0 run execute as @e[tag=storm_me] at @s run summon lightning_bolt ~ ~ ~
execute if score tmp variables matches 0 run execute as @e[tag=storm_me] at @s run tag @e[type=lightning_bolt,distance=..2] add b_tag
execute if score tmp variables matches 0 run tag @e[tag=storm_me] remove storm_me
execute if score tmp variables matches 0 run scoreboard players set @s bold_cldw 0

execute if score tmp variables matches 2 run clear @s carrot_on_a_stick{EntityTag:{Tags:["storm_wand"]}} 1

scoreboard players set tmp variables 0