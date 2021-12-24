##
 # move_lazer.mcfunction
 # intern/classes/main/hacker/items/lazer
 #
 # Created by .
##

tp ~ ~-1 ~

execute unless block ~ ~ ~ air run function the_sirwolf:intern/classes/main/hacker/items/lazer/explode_lazer

effect give @e[distance=..3] wither 20 10 true