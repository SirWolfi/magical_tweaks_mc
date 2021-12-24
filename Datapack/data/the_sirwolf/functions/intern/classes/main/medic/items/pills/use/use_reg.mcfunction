##
 # use_reg.mcfunction
 # intern/classes/main/medic/items/pills/use
 #
 # Created by .
##

effect give @s regeneration 12 1 true
execute unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air

playsound minecraft:entity.player.burp master @a