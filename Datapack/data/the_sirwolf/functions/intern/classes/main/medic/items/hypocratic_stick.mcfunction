##
 # hypocratic_stick.mcfunction
 # intern/classes/main/medic/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["hyp_thou"]},display:{Name:'{"text":"Hypocratic Thoughts","color":"yellow"}'},CustomModelData:15}},Tags:["hyp_thou"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
