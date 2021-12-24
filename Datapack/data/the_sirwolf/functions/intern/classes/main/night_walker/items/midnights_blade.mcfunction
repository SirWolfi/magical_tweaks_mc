##
 # midnights_blade.mcfunction
 # intern/classes/main/night_walker/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:iron_sword",tag:{EntityTag:{Tags:["night_bl"]},display:{Name:'{"text":"Midnight Blade","color":"black"}'},CustomModelData:1,Unbreakable:1b}},Invulnerable:1b,Tags:["night_bl"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]