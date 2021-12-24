##
 # altar.mcfunction
 # intern/spawns
 #
 # Created by The_SirWolf
##

summon item ~ ~1 ~ {Item:{Count:1b,id:"minecraft:item_frame",tag:{EntityTag:{Tags:["altar"]},display:{Name:'{"text":"Altar","color":"yellow"}'},CustomModelData:1}},Tags:["altar"]}

particle smoke ~ ~ ~ 2 0 2 10 10
kill @e[type=item,distance=..2,nbt=!{Item:{Count:1b,id:"minecraft:item_frame"}}]
