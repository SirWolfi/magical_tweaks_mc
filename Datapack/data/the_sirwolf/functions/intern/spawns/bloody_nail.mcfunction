##
 # bloody_nail.mcfunction
 # intern/spawns
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["bloody_n"]},display:{Name:'{"text":"Bloody Nail","color":"dark_red"}'},CustomModelData:11}},Invulnerable:1b,Tags:["bloody_n"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
