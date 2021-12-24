##
 # magical_crystal.mcfunction
 # intern/classes/main/mage
 #
 # Created by .
##

summon item ~ ~1 ~ {Item:{Count:1b,id:"minecraft:item_frame",tag:{EntityTag:{Tags:["mage_tab"]},display:{Name:'{"text":"Magical Crystal","color":"blue"}'},CustomModelData:9}},Tags:["mage_tab"]}

particle smoke ~ ~ ~ 2 0 2 10 10
kill @e[type=item,distance=..2,nbt=!{Item:{Count:1b,id:"minecraft:item_frame"}}]