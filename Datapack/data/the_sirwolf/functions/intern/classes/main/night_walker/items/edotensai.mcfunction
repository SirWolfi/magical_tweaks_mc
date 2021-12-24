##
 # edotensai.mcfunction
 # intern/classes/main/night_walker/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["edotensai"]},display:{Name:'{"text":"Jutsu Edotensai","color":"black"}'},CustomModelData:25}},Invulnerable:1b,Tags:["edotensai"]}
particle falling_dust coal_block ~ ~ ~ 0.1 2 0.1 10 30

kill @e[type=item,distance=..1]