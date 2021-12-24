##
 # set.mcfunction
 # intern/classes/main/scientist/items/disease_nuke
 #
 # Created by .
##

summon armor_stand ~ ~ ~ {OnGround:1b,Invulnerable:1b,Invisible:1b,Tags:["dis_nuke"]}

execute as @e[limit=1,sort=nearest,distance=..0.2,type=armor_stand,tag=dis_nuke] run scoreboard players operation @s dis_nuke_livetime_max = NORM dis_nuke_livetime_max
execute as @e[limit=1,sort=nearest,distance=..0.2,type=armor_stand,tag=dis_nuke] run scoreboard players operation @s dis_nuke_livetime_warn = NORM dis_nuke_livetime_warn


execute unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air

function the_sirwolf:intern/classes/main/scientist/items/disease_nuke/link

playsound block.beacon.deactivate master @a
playsound block.beacon.deactivate master @a
playsound block.beacon.deactivate master @a
playsound block.beacon.deactivate master @a
playsound block.anvil.place master @a
playsound block.anvil.place master @a
playsound block.anvil.place master @a
