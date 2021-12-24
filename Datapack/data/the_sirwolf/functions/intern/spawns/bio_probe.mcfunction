##
 # bio_probe.mcfunction
 # intern/spawns
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{id:"minecraft:wheat_seeds",Count:2b,tag:{EntityTag:{Tags:["bio_probe"]},display:{Name:'{"text":"Bio Probe","color":"green"}'},CustomModelData:1}},Tags:["bio_probe"]}

particle happy_villager ~ ~ ~ 1 1 1 0.05 6

kill @e[type=item,distance=..1]
