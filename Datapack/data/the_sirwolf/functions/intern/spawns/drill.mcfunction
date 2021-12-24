##
 # drill.mcfunction
 # intern/spawns
 #
 # Created by The_SirWolf
##

summon item ~ ~1 ~ {Item:{Count:1b,id:"minecraft:item_frame",tag:{EntityTag:{Tags:["drill"]},display:{Name:'{"text":"Drill","color":"brown"}'},CustomModelData:4,CustomNameVisible:1b}},Tags:["drill"]}

particle smoke ~ ~ ~ 2 0 2 10 10
kill @e[type=item,tag=!drill]

