##
 # trigger_info.mcfunction
 # intern/spawns/teleporter
 #
 # Created by .
##

tellraw @s [{"text": "-- Info of Teleporter Pipe: ","color": "green"},{"score":{"name":"@s","objective":"teleporter_info"}}," --"]

scoreboard players set sc_fnd tmp 0
execute at @e[type=item_frame,tag=telep_in] if score @e[type=item_frame,tag=telep_in,sort=nearest,limit=1] telep_reg = @s teleporter_info at @s run scoreboard players add sc_fnd tmp 1
tellraw @s [{"text": "Inputs: "},{"score":{"name":"sc_fnd","objective":"tmp"}}]
scoreboard players reset sc_fnd tmp

scoreboard players set sc_fnd tmp 0
execute at @e[type=item_frame,tag=telep_out] if score @e[type=item_frame,tag=telep_out,sort=nearest,limit=1] telep_reg = @s teleporter_info at @s run scoreboard players add sc_fnd tmp 1
tellraw @s [{"text": "Outputs: "},{"score":{"name":"sc_fnd","objective":"tmp"}}]
scoreboard players reset sc_fnd tmp

#function the_sirwolf:intern/spawns/teleporter/show_info

scoreboard players reset @s teleporter_info
scoreboard players enable @a teleporter_info
