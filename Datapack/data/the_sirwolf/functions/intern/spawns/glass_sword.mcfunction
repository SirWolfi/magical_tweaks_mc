##
 # glass_sword.mcfunction
 # intern/spawns
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:stone_sword",tag:{EntityTag:{Tags:["glass_sw"]},display:{Name:'{"text":"Glass Sword","color":"white"}'},CustomModelData:1,Damage:100}},Invulnerable:1b,Tags:["glass_sw"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
