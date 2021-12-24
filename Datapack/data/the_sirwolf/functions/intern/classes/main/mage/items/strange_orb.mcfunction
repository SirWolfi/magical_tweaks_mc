##
 # strange_orb.mcfunction
 # intern/classes/main/mage/items
 #
 # Created by .
##


summon item ~ ~2 ~ {Item:{id:"minecraft:purple_dye",Count:1b,tag:{EntityTag:{Tags:["strange_orb"]},display:{Name:'{"text":"Strange Orb","color":"purple"}'},CustomModelData:4}},Tags:["strange_orb"]}

kill @e[type=item,distance=..1]
