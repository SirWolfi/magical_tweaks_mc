##
 # signaler.mcfunction
 # intern/spawns
 #
 # Created by The_SirWolf
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:item_frame",tag:{EntityTag:{Tags:["signaler"]},display:{Name:'{"text":"Signaler","color":"dark_red"}'},CustomModelData:6,CustomNameVisible:1b}},Tags:["signaler"]}
particle smoke ~ ~ ~ 2 0 2 10 10

#execute as @e[type=item_frame,nbt={Item:{}
kill @e[type=item,distance=..1]
