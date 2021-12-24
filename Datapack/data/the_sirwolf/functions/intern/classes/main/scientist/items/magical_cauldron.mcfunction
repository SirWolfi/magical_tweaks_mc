##
 # magical_cauldron.mcfunction
 # intern/classes/main/scientist/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["mag_caul"]},display:{Name:'{"text":"Magical Cauldron","color":"dark_green"}'},CustomModelData:12}},Tags:["mag_caul"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]

