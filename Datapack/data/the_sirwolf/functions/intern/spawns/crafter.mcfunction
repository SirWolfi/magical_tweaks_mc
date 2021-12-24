##
 # crafter.mcfunction
 # intern/spawns
 #
 # Created by .
##

summon item ~ ~1 ~ {Item:{Count:1b,id:"minecraft:item_frame",tag:{EntityTag:{Tags:["crafter"]},display:{Name:'{"text":"Crafter","color":"brown"}'},CustomModelData:3}},Tags:["crafter"]}

particle smoke ~ ~ ~ 2 0 2 10 10
kill @e[type=item,distance=..2,nbt=!{Item:{Count:1b,id:"minecraft:item_frame"}}]