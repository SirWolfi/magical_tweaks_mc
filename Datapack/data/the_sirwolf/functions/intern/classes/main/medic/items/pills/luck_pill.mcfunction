##
 # luck_pill.mcfunction
 # intern/classes/main/medic/items/pills
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["luck_p"]},display:{Name:'{"text":"Luck Pill","color":"red"}'},CustomModelData:19}},Tags:["luck_p"]}
particle heart ~ ~ ~ 0.1 0.1 0.1 10 4

kill @e[type=item,distance=..1]