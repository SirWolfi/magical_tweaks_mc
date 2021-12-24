##
 # teleporter.mcfunction
 # intern/spawns
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:item_frame",tag:{EntityTag:{Tags:["telep_in"]},display:{Name:'{"text":"Teleporter Input","color":"dark_gray"}'},CustomModelData:4}},Tags:["telep_in"]}

particle smoke ~ ~ ~ 2 0 2 10 10
kill @e[type=item,distance=..1]