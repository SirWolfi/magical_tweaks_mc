##
 # terminal.mcfunction
 # intern/classes/main/hacker/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["terminal"]},display:{Name:'{"text":"Terminal","color":"dark_gray"}'},CustomModelData:5}},Tags:["terminal"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]