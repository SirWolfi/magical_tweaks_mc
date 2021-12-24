##
 # edo_ent_tick.mcfunction
 # intern/classes/main/night_walker/other
 #
 # Created by .
##


execute as @e[tag=edo_ent] run scoreboard players add @s edo_ent_livetime 1
execute as @e[tag=edo_ent] if score @s edo_ent_livetime >= MAX edo_ent_livetime run kill @s

execute as @e[tag=edo_ent] run scoreboard players add @s edo_ent_att_cldw 1
execute as @e[tag=edo_ent] if score @s edo_ent_livetime >= MAX_cldw edo_ent_att_cldw run scoreboard players operation @s edo_ent_att_cldw = MAX_cldw_m1 edo_ent_att_cldw


# entity 1
execute as @e[tag=edo_ent_1] at @s run particle falling_dust black_banner ~ ~ ~ 0.1 1 0.1 0.01 20
execute as @e[tag=edo_ent_1] at @s if score @s edo_ent_att_cldw >= MAX_cldw_m1 edo_ent_att_cldw run function the_sirwolf:intern/classes/main/night_walker/other/edo_ent/edo_ent_1_att

