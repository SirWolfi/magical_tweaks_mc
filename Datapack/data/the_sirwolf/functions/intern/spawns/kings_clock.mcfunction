##
 # kings_clock.mcfunction
 # intern/spawns
 #
 # Created by 
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["kings_clock"]},display:{Name:'{"text":"Kings Clock","color":"yellow"}'},CustomModelData:38,Enchantments:[{id:"minecraft:infinity"}]}},Invulnerable:1b,Tags:["kings_clock"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]