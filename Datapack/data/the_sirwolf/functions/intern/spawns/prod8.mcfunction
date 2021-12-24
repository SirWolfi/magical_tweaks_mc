##
 # prod5.mcfunction
 # intern/spawns
 #
 # Created by The_SirWolf
##

give @p enchanted_book{StoredEnchantments:[{id:"minecraft:protection",lvl:8s}]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..2]