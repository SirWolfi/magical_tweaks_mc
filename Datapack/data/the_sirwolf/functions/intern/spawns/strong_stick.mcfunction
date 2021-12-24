##
 # strong_stick.mcfunction
 # intern/spawns
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:stick",tag:{EntityTag:{Tags:["strong_stick"]},display:{Name:'{"text":"Stronger Stick","color":"grey"}'},CustomModelData:1}},Tags:["strong_stick"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]