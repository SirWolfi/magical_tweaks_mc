##
 # big_torch.mcfunction
 # intern/spawns
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["big_tor"]},display:{Name:'{"text":"Big Torch","color":"yellow"}'},CustomModelData:13}},Invulnerable:1b,Tags:["big_tor"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
