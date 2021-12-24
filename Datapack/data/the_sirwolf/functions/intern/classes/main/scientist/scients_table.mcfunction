##
 # science_table.mcfunction
 # intern/classes/main/scientist
 #
 # Created by .
##

summon item ~ ~1 ~ {Item:{Count:1b,id:"minecraft:item_frame",tag:{EntityTag:{Tags:["sci_tab"]},display:{Name:'{"text":"Science Table","color":"dark_gray"}'}}},Tags:["sci_tab"]}

particle smoke ~ ~ ~ 2 0 2 10 10
kill @e[type=item,distance=..2,nbt=!{Item:{Count:1b,id:"minecraft:item_frame"}}]
