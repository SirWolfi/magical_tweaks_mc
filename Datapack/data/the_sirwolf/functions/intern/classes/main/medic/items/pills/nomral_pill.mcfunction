##
 # nomral_pill.mcfunction
 # intern/classes/main/medic/items/pills
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["norm_p"]},display:{Name:'{"text":"Normal Pill","color":"red"}'},CustomModelData:21}},Tags:["norm_p"]}
summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:bucket"}}

particle heart ~ ~ ~ 0.1 0.1 0.1 10 4

kill @e[type=item,distance=..1]
