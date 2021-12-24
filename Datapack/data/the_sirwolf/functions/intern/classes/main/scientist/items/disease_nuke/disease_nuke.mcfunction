##
 # disease_nuke.mcfunction
 # intern/classes/main/scientist/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["dis_nuke_s"]},display:{Name:'{"text":"Disease Nuke","color":"dark_green"}'},CustomModelData:32}},Tags:["dis_nuke_s"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]