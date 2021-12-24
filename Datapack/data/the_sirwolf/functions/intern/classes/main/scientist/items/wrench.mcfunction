##
 # wrench.mcfunction
 # intern/classes/main/scientist/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["wrench"]},display:{Name:'{"text":"Wrench","color":"dark_gray"}'},CustomModelData:32}},Tags:["wrench"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
