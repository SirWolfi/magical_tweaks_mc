##
 # upgrade_jumppad.mcfunction
 # intern/spawns/config
 #
 # Created by The_SirWolf
##


tag @s add level2JP
kill @e[type=item,nbt={Item:{id:"minecraft:slime_block",Count:10b}},distance=..1]
data modify entity @s Item set value {id:"minecraft:slime_block",Count:1b}
