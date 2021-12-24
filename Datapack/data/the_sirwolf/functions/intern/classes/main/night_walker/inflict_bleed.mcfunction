##
 # inflict_bleed.mcfunction
 # intern/classes/main/night_walker
 #
 # Created by .
##

# make damage here

particle dripping_lava ~ ~ ~ 0.3 1 0.3 0.01 20

execute if entity @s[type=player] run effect give @s poison 1 10 true
execute if entity @s[type=!player] run effect give @s wither 1 10 true

