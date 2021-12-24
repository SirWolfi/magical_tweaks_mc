##
 # upgrade_jumppad.mcfunction
 # intern/spawns/config
 #
 # Created by The_SirWolf
##


tag @s add level2SL
kill @e[type=item,nbt={Item:{id:"minecraft:sugar",Count:64b}},distance=..1]
data modify entity @s Item set value {id:"minecraft:rabbit_foot",Count:1b}