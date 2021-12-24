##
 # psy_hack.mcfunction
 # intern/classes/main/hacker/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["psy_hack"]},display:{Name:'{"text":"Psy Hack","color":"dark_purple"}'},CustomModelData:8}},Tags:["psy_hack"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
