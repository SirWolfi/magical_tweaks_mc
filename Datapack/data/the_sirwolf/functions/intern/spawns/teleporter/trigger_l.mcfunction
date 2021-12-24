##
 # trigger#.mcfunction
 # intern/spawns/teleporter
 #
 # Created by .
##


execute at @e[type=item_frame,tag=telep_out] unless score @e[type=item_frame,tag=telep_out,sort=nearest,limit=1] telep_reg matches 0 run tellraw @s [{"score":{"name":"@e[type=item_frame,tag=telep_out,sort=nearest,limit=1]","objective":"telep_reg"}},": Taken"]

scoreboard players reset @s teleporter_list
scoreboard players enable @a teleporter_list
