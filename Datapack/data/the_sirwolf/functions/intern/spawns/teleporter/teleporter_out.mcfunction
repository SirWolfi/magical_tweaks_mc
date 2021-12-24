##
 # teleporter_out.mcfunction
 # intern/spawns/teleporter
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:item_frame",tag:{EntityTag:{Tags:["telep_out"]},display:{Name:'{"text":"Teleporter Output","color":"dark_gray"}'},CustomModelData:4}},Tags:["telep_out"]}

particle smoke ~ ~ ~ 2 0 2 10 10
kill @e[type=item,distance=..1]