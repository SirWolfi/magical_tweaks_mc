##
 # summon_random_potion.mcfunction
 # intern/classes/main/scientist/items/potions_caul
 #
 # Created by .
##

scoreboard players operation ttmp tmp = rand variables
scoreboard players operation ttmp tmp %= c7 variables


execute if score ttmp tmp matches 0 run function the_sirwolf:intern/classes/main/scientist/items/potions_caul/levitation
execute if score ttmp tmp matches 1 run function the_sirwolf:intern/classes/main/scientist/items/potions_caul/levitation
execute if score ttmp tmp matches 2 run function the_sirwolf:intern/classes/main/scientist/items/potions_caul/levitation

execute if score ttmp tmp matches 3 run function the_sirwolf:intern/classes/main/scientist/items/potions_caul/slowness
execute if score ttmp tmp matches 4 run function the_sirwolf:intern/classes/main/scientist/items/potions_caul/slowness
execute if score ttmp tmp matches 5 run function the_sirwolf:intern/classes/main/scientist/items/potions_caul/slowness


execute if score ttmp tmp matches 6 run function the_sirwolf:intern/classes/main/scientist/items/potions_caul/parasite_potion

scoreboard players reset ttmp tmp

