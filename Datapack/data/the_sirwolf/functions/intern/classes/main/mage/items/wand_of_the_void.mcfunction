##
 # wand_of_the_void.mcfunction
 # intern/classes/main/mage/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["wand_of_the_void"]},display:{Name:'{"text":"Wand of the Void","color":"light_purple"}'},CustomModelData:18}},Tags:["wand_of_the_void"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
