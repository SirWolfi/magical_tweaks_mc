##
 # bug.mcfunction
 # intern/classes/main/hacker/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:lime_dye",tag:{EntityTag:{Tags:["bug"]},display:{Name:'{"text":"bug","color":"green"}'},CustomModelData:2}},Tags:["bug"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
