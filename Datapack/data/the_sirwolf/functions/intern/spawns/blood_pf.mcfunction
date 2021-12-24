##
 # blood_pf.mcfunction
 # intern/spawns
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{id:"minecraft:redstone",Count:2b,tag:{EntityTag:{Tags:["blood"]},display:{Name:'{"text":"Blood","color":"red"}'},CustomModelData:1}},Tags:["blood"]}

particle damage_indicator ~ ~ ~ 1 1 1 0.05 6

kill @e[type=item,distance=..1]
