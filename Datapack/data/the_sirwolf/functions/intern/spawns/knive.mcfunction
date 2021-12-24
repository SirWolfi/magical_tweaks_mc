##
 # knive.mcfunction
 # intern/spawns
 #
 # Created by The_SirWolf
##


summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["knive"]},display:{Name:'{"text":"Knive","color":"grey"}'},CustomModelData:2}},Tags:["knive"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]