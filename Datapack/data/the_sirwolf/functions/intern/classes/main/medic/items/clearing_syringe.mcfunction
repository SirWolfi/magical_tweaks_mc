##
 # clearing_syringe.mcfunction
 # intern/classes/main/medic/items
 #
 # Created by The_SirWolf
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["clearing_syringe"]},display:{Name:'{"text":"Clearing Syringe","color":"white"}'},CustomModelData:7}},Tags:["clearing_syringe"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
