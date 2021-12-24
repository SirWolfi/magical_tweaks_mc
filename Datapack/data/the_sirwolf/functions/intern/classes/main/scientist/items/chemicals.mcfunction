##
 # chemicals.mcfunction
 # intern/classes/main/scientist/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:wheat_seeds",tag:{EntityTag:{Tags:["chemicals"]},display:{Name:'{"text":"Chemicals","color":"dark_green"}'},CustomModelData:2}},Tags:["chemicals"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]

