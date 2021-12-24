##
 # ring_frame.mcfunction
 # intern/spawns
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["ring_f"]},display:{Name:'{"text":"Ring Frame","color":"gray"}'},CustomModelData:25}},Tags:["ring_f"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
