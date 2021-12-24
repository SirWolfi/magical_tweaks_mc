##
 # extractor.mcfunction
 # intern/spawns
 #
 # Created by .
##

summon item ~ ~1 ~ {Item:{Count:1b,id:"minecraft:item_frame",tag:{EntityTag:{Tags:["extractor"]},display:{Name:'{"text":"Extractor","color":"brown"}'},CustomModelData:6,CustomNameVisible:1b}},Tags:["extractor"]}

particle smoke ~ ~ ~ 2 0 2 10 10
kill @e[type=item,tag=!extractor]