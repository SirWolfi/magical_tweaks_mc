##
 # lazer_contr.mcfunction
 # intern/classes/main/hacker/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["lazer"]},display:{Name:'{"text":"Satelite Control","color":"dark_purple"}'},CustomModelData:9}},Tags:["lazer"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
