##
 # land_mine.mcfunction
 # intern/classes/main/scientist/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["land_mine"]},display:{Name:'{"text":"Land Mine","color":"dark_gray"}'},CustomModelData:31}},Tags:["land_mine"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]


