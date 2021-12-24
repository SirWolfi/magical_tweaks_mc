##
 # color_crystal.mcfunction
 # intern/spawns
 #
 # Created by The_SirWolf
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:amethyst_shard",tag:{EntityTag:{Tags:["color_crystal"],},Enchantments:[{id:"minecraft:mending",lvl:1s}],display:{Name:'{"text":"Color Crystal","color":"pink"}'},CustomModelData:1}},Tags:["color_crystal"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]