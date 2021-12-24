##
 # jumppad.mcfunction
 # intern/spawns
 #
 # Created by The_SirWolf
##

summon item ~ ~1 ~ {Item:{Count:1b,id:"minecraft:item_frame",tag:{EntityTag:{Tags:["jumppad"]},display:{Name:'{"text":"JumpPad","color":"green"}'},CustomModelData:5,CustomNameVisible:1b}},Tags:["jumppad"]}

particle smoke ~ ~ ~ 2 0 2 10 10
kill @e[type=item,distance=..2,nbt=!{Item:{Count:1b,id:"minecraft:item_frame"}}]

