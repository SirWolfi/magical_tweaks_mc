##
 # speedloop.mcfunction
 # intern/spawns
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:item_frame",tag:{EntityTag:{Tags:["speedloop"]},display:{Name:'{"text":"SpeedLoop","color":"white"}'},CustomModelData:7,CustomNameVisible:1b}},Tags:["speedloop"],CustomNameVisible:1b}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
