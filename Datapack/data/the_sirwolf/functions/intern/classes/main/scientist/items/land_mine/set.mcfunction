##
 # set.mcfunction
 # intern/classes/main/scientist/items/land_mine
 #
 # Created by .
##

summon armor_stand ~ ~ ~ {OnGround:1b,Invulnerable:1b,Invisible:1b,Tags:["land_mine"]}

execute unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air

playsound block.fire.extinguish master @a

