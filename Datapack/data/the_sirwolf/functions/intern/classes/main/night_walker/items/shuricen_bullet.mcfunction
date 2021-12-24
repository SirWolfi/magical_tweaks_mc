##
 # shuricen_bullet.mcfunction
 # intern/classes/main/night_walker/other
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["night_sh"]},display:{Name:'{"text":"Jutsu of the Shadowshuricen","color":"black"}'},CustomModelData:28}},Invulnerable:1b,Tags:["night_sh"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
