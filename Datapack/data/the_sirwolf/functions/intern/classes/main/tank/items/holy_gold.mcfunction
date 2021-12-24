##
 # holy_gold.mcfunction
 # intern/classes/main/tank/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{id:"minecraft:raw_gold",Count:1b,tag:{EntityTag:{Tags:["holy_gold"]},display:{Name:'{"text":"Holy Gold","color":"yellow"}'},CustomModelData:1}},Tags:["holy_gold"]}

kill @e[type=item,distance=..1]