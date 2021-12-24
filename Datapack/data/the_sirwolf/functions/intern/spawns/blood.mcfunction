##
 # blood.mcfunction
 # intern/spawns
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{id:"minecraft:redstone",Count:2b,tag:{EntityTag:{Tags:["blood"]},display:{Name:'{"text":"Blood","color":"red"}'},CustomModelData:1}},Tags:["blood"]}

effect give @s instant_damage 1 0 true
