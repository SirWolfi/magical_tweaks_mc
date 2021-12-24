##
 # use_wand_of_the_void.mcfunction
 # intern/classes/main/mage/items
 #
 # Created by .
##

scoreboard players set tmp variables 0

execute if data entity @s[type=player] {foodLevel:0} run scoreboard players set tmp variables 1

execute if block ~ ~-1 ~ air run scoreboard players set tmp variables 3

execute unless score @s class_id = MAGE class_id run scoreboard players set tmp variables 2

execute if score tmp variables matches 0 run effect give @s hunger 3 250 true
execute if score tmp variables matches 0 run effect give @s invisibility 10 20 true
execute if score tmp variables matches 0 run particle portal ~ ~ ~ 0.1 0.1 0.1 0.04 10

execute if score tmp variables matches 0 run playsound block.portal.trigger master @a
execute if score tmp variables matches 0 run tag @a[distance=1..100,sort=nearest,limit=1] add tp_me
execute if score tmp variables matches 0 run summon armor_stand ~ ~ ~ {Tags:["tp_arm"],Invisible:true}
execute if score tmp variables matches 0 run tp @s @a[tag=tp_me,sort=nearest,limit=1]
execute if score tmp variables matches 0 run tp @a[tag=tp_me,limit=1,sort=nearest] @e[type=armor_stand,tag=tp_arm,limit=1]
execute if score tmp variables matches 0 run tag @a[tag=tp_me] remove tp_me
execute if score tmp variables matches 0 run kill @e[tag=tp_arm]

execute if score tmp variables matches 2 run clear @s carrot_on_a_stick{EntityTag:{Tags:["wand_of_the_void"]}} 1

scoreboard players set tmp variables 0
