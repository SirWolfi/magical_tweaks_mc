##
 # ring_of_tranquillity.mcfunction
 # intern/classes/main/mage/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["ring_o_tran"]},display:{Name:'{"text":"Ring of Tranquillity","color":"dark_gray"}'},CustomModelData:26}},Tags:["ring_o_tran"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]