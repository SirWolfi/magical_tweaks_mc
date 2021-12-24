##
 # midnights_blade_lvl2.mcfunction
 # intern/classes/main/night_walker/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:diamond_sword",tag:{EntityTag:{Tags:["night_bl_lvl2"]},display:{Name:'{"text":"Midnight Blade +","color":"black","bold": true}'},CustomModelData:1,Unbreakable:1b}},Invulnerable:1b,Tags:["night_bl_lvl2"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
