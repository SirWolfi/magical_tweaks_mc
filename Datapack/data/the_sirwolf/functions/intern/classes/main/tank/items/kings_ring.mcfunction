##
 # kings_ring.mcfunction
 # intern/classes/main/tank/items
 #
 # Created by .
##


summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["king_r"]},display:{Name:'{"text":"Kings Ring","color":"yellow"}'},CustomModelData:14,Unbreakable:1b}},Tags:["kings_r"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
