##
 # fire_orb.mcfunction
 # intern/classes/main/mage/items
 #
 # Created by .
##


summon item ~ ~2 ~ {Item:{id:"minecraft:purple_dye",Count:1b,tag:{EntityTag:{Tags:["fire_orb"]},display:{Name:'{"text":"Fire Orb","color":"dark_red"}'},CustomModelData:1}},Tags:["fire_orb"]}

kill @e[type=item,distance=..1]

