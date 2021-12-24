##
 # storm_orb.mcfunction
 # intern/classes/main/mage/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{id:"minecraft:purple_dye",Count:1b,tag:{EntityTag:{Tags:["storm_orb"]},display:{Name:'{"text":"Storm Orb","color":"dark_blue"}'},CustomModelData:3}},Tags:["storm_orb"]}

kill @e[type=item,distance=..1]
