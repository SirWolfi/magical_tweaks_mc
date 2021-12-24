##
 # ice_orb.mcfunction
 # intern/classes/main/mage/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{id:"minecraft:purple_dye",Count:1b,tag:{EntityTag:{Tags:["ice_orb"]},display:{Name:'{"text":"Ice Orb","color":"blue"}'},CustomModelData:2}},Tags:["ice_orb"]}

kill @e[type=item,distance=..1]