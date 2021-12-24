##
 # glider.mcfunction
 # intern/spawns
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["glider"]},display:{Name:'{"text":"Glider","color":"dark_gray"}'},CustomModelData:3}},Invulnerable:1b,Tags:["glider"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
