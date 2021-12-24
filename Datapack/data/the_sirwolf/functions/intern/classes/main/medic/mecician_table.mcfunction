##
 # mecician_table.mcfunction
 # intern/classes/main/medic
 #
 # Created by .
##

summon item ~ ~1 ~ {Item:{Count:1b,id:"minecraft:item_frame",tag:{EntityTag:{Tags:["medic_tab"]},display:{Name:'{"text":"Medic Table","color":"red"}'}}},Tags:["medic_tab"]}

particle smoke ~ ~ ~ 2 0 2 10 10
kill @e[type=item,distance=..2,nbt=!{Item:{Count:1b,id:"minecraft:item_frame"}}]
