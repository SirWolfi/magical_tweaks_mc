##
 # antenna.mcfunction
 # intern/spawns
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{id:"minecraft:lightning_rod",Count:2b,tag:{EntityTag:{Tags:["antenna"]},display:{Name:'{"text":"Antenna","color":"dark_grey"}'},CustomModelData:1}},Tags:["antenna"]}

particle smoke ~ ~ ~ 1 1 1 0.05 6

kill @e[type=item,distance=..1]