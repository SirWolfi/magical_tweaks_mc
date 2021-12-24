##
 # extractor_check.mcfunction
 # intern/spawns/config
 #
 # Created by .
##

# poison
execute if block ~ ~1 ~ warped_stem run function the_sirwolf:intern/spawns/posion
execute if block ~ ~1 ~ warped_stem run setblock ~ ~1 ~ air

execute if entity @e[type=item,sort=nearest,distance=..1,nbt={Item:{id:"minecraft:warped_stem",Count:1b}},limit=1] run function the_sirwolf:intern/spawns/posion
execute if entity @e[type=item,sort=nearest,distance=..1,nbt={Item:{id:"minecraft:poisonous_potato",Count:1b}},limit=1] run function the_sirwolf:intern/spawns/posion

# blood
execute if block ~ ~1 ~ crimson_stem run function the_sirwolf:intern/spawns/blood_pf
execute if block ~ ~1 ~ crimson_stem run setblock ~ ~1 ~ air

execute if entity @e[type=item,sort=nearest,distance=..1,nbt={Item:{id:"minecraft:crimson_stem",Count:1b}},limit=1] run function the_sirwolf:intern/spawns/blood_pf

# meshed organic material
execute if entity @e[type=item,sort=nearest,distance=..1,nbt={Item:{id:"minecraft:grass",Count:10b}},limit=1] if entity @e[type=item,sort=nearest,distance=..1,nbt={Item:{id:"minecraft:moss_block",Count:1b}},limit=1] run function the_sirwolf:intern/spawns/meshed_organic_material

# bio probe
execute if entity @e[type=item,sort=nearest,distance=..1,nbt={Item:{id:"minecraft:green_dye",Count:10b,tag:{EntityTag:{Tags:["mesh_org_mat"]}}}},limit=1] run function the_sirwolf:intern/spawns/bio_probe

