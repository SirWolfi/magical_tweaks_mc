##
 # pacifinomicron.mcfunction
 # intern/classes/main/medic/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["pacifi"]},display:{Name:'{"text":"Pacifinomicron","color":"white","bold": true}'},CustomModelData:36}},Tags:["pacifi"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
