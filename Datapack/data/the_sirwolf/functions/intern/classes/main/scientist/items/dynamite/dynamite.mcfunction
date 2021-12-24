##
 # dynamite.mcfunction
 # intern/classes/main/scientist/items
 #
 # Created by .
##


summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:splash_potion",tag:{EntityTag:{Tags:["dynamite"]},display:{Name:'{"text":"Dynamite","color":"dark_gray"}'},CustomPotionColor:13503757,CustomModelData:1}},Tags:["dynamite"]}

kill @e[type=item,distance=..1]