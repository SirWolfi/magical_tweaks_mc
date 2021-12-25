##
 # reset.mcfunction
 # intern/classes
 #
 # Created by .
##

# Medic

scoreboard objectives add staff_oc_cldw dummy

scoreboard objectives add staff_oc_cldw_max dummy
scoreboard players set MAX_cldw staff_oc_cldw_max 300
scoreboard players set NORM_p staff_oc_cldw_max 200
scoreboard players operation @a staff_oc_cldw_max = MAX_cldw staff_oc_cldw_max

scoreboard objectives add staff_oh_cldw dummy

scoreboard objectives add staff_oh_cldw_max dummy
scoreboard players set MAX_cldw staff_oh_cldw_max 100
scoreboard players set NORM_p staff_oh_cldw_max 60
scoreboard players operation @a staff_oh_cldw_max = MAX_cldw staff_oh_cldw_max

# Tank

scoreboard objectives add pal_ham_used dummy

scoreboard objectives add pal_rage_mode dummy

scoreboard objectives add pal_rage_mode_max dummy
scoreboard players set @a pal_rage_mode_max 350
scoreboard players set NORM pal_rage_mode_max 350

scoreboard objectives add pal_ham_used_max dummy
scoreboard players set @a pal_ham_used_max 51
scoreboard players set NORM pal_ham_used_max 51

scoreboard objectives add pal_ham_used_max_m1 dummy
scoreboard players set @a pal_ham_used_max_m1 50
scoreboard players set NORM pal_ham_used_max_m1 50

# Archer

# Mage

scoreboard objectives add bold_cldw dummy
scoreboard players set MAX_cldw bold_cldw 450
scoreboard players set MAX_cldw_m1 bold_cldw 440

scoreboard objectives add ice_cldw dummy
scoreboard players set MAX_cldw ice_cldw 300
scoreboard players set MAX_cldw_m1 ice_cldw 290

scoreboard objectives add fire_cldw dummy
scoreboard players set MAX_cldw fire_cldw 100

scoreboard objectives add fire_b_livetime dummy
scoreboard players set MAX fire_b_livetime 140

scoreboard objectives add ring_o_tran_cldw dummy
scoreboard players set MAX_cldw ring_o_tran_cldw 220

# Night Walker

scoreboard objectives add blood_cldw dummy
scoreboard players set MAX_cldw blood_cldw 400
scoreboard players set MAX_cldw_m1 blood_cldw 390

scoreboard objectives add inf_blood_cldw dummy
scoreboard players set MAX_cldw inf_blood_cldw 200
scoreboard players set MAX_cldw_m1 inf_blood_cldw 190

scoreboard objectives add bleeding_cldw dummy
scoreboard players set MAX_cldw bleeding_cldw 100
scoreboard players set MAX_cldw_m1 bleeding_cldw 90

scoreboard objectives add throw_s_cldw dummy
scoreboard players set MAX_cldw throw_s_cldw 110
scoreboard players set MAX_cldw_m1 throw_s_cldw 100

# 1 = 1 block
scoreboard objectives add shuricen_range dummy
scoreboard players set MAX_rang shuricen_range 200

scoreboard objectives add smoke_mode dummy

scoreboard objectives add edo_cldw dummy
scoreboard players set MAX_cldw edo_cldw 1010
scoreboard players set MAX_cldw_m1 edo_cldw 1000

scoreboard objectives add edo_tmb_livetime dummy
scoreboard players set MAX edo_tmb_livetime 110

scoreboard objectives add edo_tmb_spawn dummy
scoreboard players set MAX edo_tmb_spawn 3

scoreboard objectives add edo_ent_livetime dummy
scoreboard players set MAX edo_ent_livetime 2000

scoreboard objectives add edo_ent_att_cldw dummy
scoreboard players set MAX_cldw edo_ent_att_cldw 110
scoreboard players set MAX_cldw_m1 edo_ent_att_cldw 100

scoreboard objectives add edo_ent1_bulrang dummy
scoreboard players set MAX_rang edo_ent1_bulrang 300

scoreboard objectives add pentagram_duration dummy
scoreboard players set MAX pentagram_duration 600

scoreboard objectives add pentagram_cldw dummy
scoreboard players set MAX_cldw pentagram_cldw 900

# Hacker
#cldw = cooldown

execute as @a at @s if score @s class_id = HACKER class_id if score @s psy_hack_en_time > c0 variables run function the_sirwolf:intern/classes/main/hacker/items/psy_hack/tp_back

scoreboard objectives add psy_hack_cldw dummy
scoreboard players set MAX_cldw psy_hack_cldw 300

scoreboard objectives add psyh_tp_hand dummy
scoreboard players set MAX psyh_tp_hand 0
scoreboard players set @e psyh_tp_hand 0

scoreboard objectives add psyh_tp_hand_pl dummy
scoreboard players set MAX psyh_tp_hand_pl 0
scoreboard players set @a psyh_tp_hand_pl 0

scoreboard objectives add psy_hack_en_time dummy
scoreboard players set MAX psy_hack_en_time 600

scoreboard objectives add psy_hack_l_hack dummy
scoreboard players set @a psy_hack_l_hack 0

scoreboard objectives add hack_en dummy
scoreboard players reset @a hack_en

scoreboard objectives add term_en_xray dummy
execute as @a unless score @s term_en_xray matches 1 run scoreboard players set @s term_en_xray 0

scoreboard objectives add term_en_fly dummy
execute as @a unless score @s term_en_fly matches 1 run scoreboard players set @s term_en_fly 0

scoreboard objectives add term_en_mov dummy
execute as @a unless score @s term_en_mov matches 1 run scoreboard players set @s term_en_mov 0

scoreboard objectives add term_en_g dummy
execute as @a unless score @s term_en_g matches 1 run scoreboard players set @s term_en_g 0

scoreboard objectives add fly_puffer dummy
scoreboard players set MAX_puff fly_puffer 100

scoreboard objectives add lazer_cldw dummy
scoreboard players set MAX_cldw lazer_cldw 600

scoreboard objectives add lazer_s_cldw dummy
scoreboard players set MAX_cldw lazer_s_cldw 400


scoreboard objectives add lazer_aim_link dummy
scoreboard players set MAX lazer_aim_link 1
scoreboard players set @a lazer_aim_link 0
kill @e[type=armor_stand,tag=lazer_arm]



# scientist

scoreboard objectives add mag_caul_cldw dummy

scoreboard objectives add mag_caul_cldw_max dummy
scoreboard players set NORM mag_caul_cldw_max 1000
scoreboard players operation @a mag_caul_cldw_max = NORM mag_caul_cldw_max

scoreboard objectives add parasite_expl_cldw dummy
scoreboard players set MAX_cldw parasite_expl_cldw 300

scoreboard objectives add land_mine_livetime dummy

scoreboard objectives add land_mine_livetime_max dummy
scoreboard players set NORM land_mine_livetime_max 400
scoreboard players set NORM_p land_mine_livetime_max 650
#scoreboard objectives add heart_conv_duration dummy

scoreboard objectives add dis_nuke_livetime dummy

scoreboard objectives add dis_nuke_livetime_max dummy
scoreboard players set NORM dis_nuke_livetime_max 1000
scoreboard players set NORM_p dis_nuke_livetime_max 800

scoreboard objectives add dis_nuke_livetime_warn dummy
scoreboard players set NORM dis_nuke_livetime_warn 840
scoreboard players set NORM_p dis_nuke_livetime_warn 700

scoreboard objectives add dis_nuke_link dummy
scoreboard players set MAX dis_nuke_link 0

#dis_nuke

