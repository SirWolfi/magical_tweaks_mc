##
 # meshed_organic_material.mcfunction
 # intern/spawns
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:green_dye",tag:{EntityTag:{Tags:["mesh_org_mat"]},display:{Name:'{"text":"Meshed Organic Material","color":"dark_green"}'},CustomModelData:1}},Invulnerable:1b,Tags:["mesh_org_mat"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
