##
 # tech_table.mcfunction
 # intern/spawns
 #
 # Created by .
##
summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:item_frame",tag:{EntityTag:{Tags:["tech_table"]},display:{Name:'{"text":"Tech Table","color":"dark_gray"}'},CustomModelData:4}},Tags:["tech_table"]}

particle smoke ~ ~ ~ 2 0 2 10 10
kill @e[type=item,distance=..1]