##
 # blood_wand.mcfunction
 # intern/classes/main/mage/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["blood_wand"]},display:{Name:'{"text":"Blood Wand","color":"dark_red"}'},CustomModelData:39}},Tags:["blood"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
