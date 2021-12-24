##
 # daylightchanger_dayemblem.mcfunction
 # intern/spawns
 #
 # Created by The_SirWolf
##

summon item ~ ~1 ~ {Item:{Count:1b,id:"minecraft:emerald",tag:{EntityTag:{Tags:["daylightchanger_day"]}}},Tags:["daylightchanger_day"]}

particle smoke ~ ~ ~ 2 0 2 10 10
kill @e[type=item,distance=..2,nbt=!{Item:{Count:1b,id:"minecraft:emerald"}}]

