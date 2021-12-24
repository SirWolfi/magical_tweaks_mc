##
 # 9iron.mcfunction
 # intern/spawns
 #
 # Created by The_SirWolf
##

summon item ~ ~1 ~ {Item:{Count:9b,id:"minecraft:iron_ingot"}}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..2,nbt=!{Item:{Count:9b,id:"minecraft:iron_ingot"}}]
