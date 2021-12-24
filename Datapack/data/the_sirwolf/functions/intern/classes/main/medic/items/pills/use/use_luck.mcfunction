##
 # use_luck.mcfunction
 # intern/classes/main/medic/items/pills/use
 #
 # Created by .
##

effect give @s luck 20 1 true
execute unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air

playsound minecraft:entity.player.burp master @a

