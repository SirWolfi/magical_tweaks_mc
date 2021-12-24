##
 # dynamite_lvl3.mcfunction
 # intern/classes/main/scientist/items/dynamite
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:splash_potion",tag:{EntityTag:{Tags:["dynamite_lvl3"]},display:{Name:'{"text":"Dynamite ++","color":"dark_gray"}'},CustomPotionColor:13503757,CustomModelData:3}},Tags:["dynamite_lvl3"]}

kill @e[type=item,distance=..1]

