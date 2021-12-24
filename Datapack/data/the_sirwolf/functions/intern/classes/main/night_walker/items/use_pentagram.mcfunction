##
 # use_pentagram.mcfunction
 # intern/classes/main/night_walker/items
 #
 # Created by .
##

scoreboard players set tmp variables 0

execute unless score @s pentagram_cldw >= MAX_cldw pentagram_cldw run scoreboard players set tmp variables 3

execute unless score @s class_id = NIGHT_WALKER class_id run scoreboard players set tmp variables 2

execute if score tmp variables matches 0 run playsound entity.ghast.scream master @a
execute if score tmp variables matches 0 run playsound entity.ghast.death master @a
execute if score tmp variables matches 0 run playsound entity.ghast.warn master @a
execute if score tmp variables matches 0 run particle dust 0.541 0.125 0.125 1 ~ ~ ~ 1 1 1 0.01 20

execute if score tmp variables matches 0 run scoreboard players add @s pentagram_duration 1
execute if score tmp variables matches 0 run attribute @s generic.max_health base set 4

execute if score tmp variables matches 0 run scoreboard players set @s pentagram_cldw 0

execute if score tmp variables matches 0 run title @s title {"text": ""}
execute if score tmp variables matches 0 run title @s subtitle {"text": "May the deamons give you power","bold": true,"color": "dark_red"}

execute if score tmp variables matches 0 run say i

execute if score tmp variables matches 2 run clear @s carrot_on_a_stick{EntityTag:{Tags:["pentagram"]}} 1


scoreboard players set tmp variables 0