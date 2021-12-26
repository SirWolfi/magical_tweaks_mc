##
 # reset.mcfunction
 # intern
 #
 # Created by The_SirWolf.
##

scoreboard objectives add sneak custom:sneak_time
scoreboard objectives add jump custom:jump

scoreboard objectives add tmp dummy
scoreboard players reset @e tmp 
scoreboard objectives add signal_sc dummy
scoreboard objectives add variables dummy
scoreboard players set tick variables 0
scoreboard players set onSec variables 0
scoreboard players set tonSec variables 0
scoreboard players set on5Sec variables 0
scoreboard players set c60 variables 60
scoreboard players set c20 variables 20
scoreboard players set c15 variables 15
scoreboard players set c10 variables 10
scoreboard players set c7 variables 7
scoreboard players set c6 variables 6
scoreboard players set c5 variables 5
scoreboard players set c3 variables 3
scoreboard players set c1 variables 1
scoreboard players set c0 variables 0
scoreboard players set rand variables 0
scoreboard players set rand_max variables 10000

scoreboard objectives add time_tick dummy
scoreboard objectives add time_tick_reset dummy
scoreboard objectives add time_sec dummy
scoreboard objectives add time_sec_reset dummy

scoreboard objectives add deaths deathCount
scoreboard players set @a deaths 0

scoreboard objectives add was_tot_inactive dummy
scoreboard objectives add was_inactive dummy
scoreboard objectives add did_hit custom:damage_dealt
scoreboard objectives add got_hurt custom:damage_taken
scoreboard objectives add moved custom:walk_one_cm
scoreboard objectives add fell custom:fall_one_cm
scoreboard objectives add piged custom:pig_one_cm
scoreboard objectives add flew custom:fly_one_cm


scoreboard players set @a was_tot_inactive 0
scoreboard players set @a was_inactive 0
scoreboard players set @a did_hit 0
scoreboard players set @a got_hurt 0
scoreboard players set @a got_hurt 0
scoreboard players set @a moved 0
scoreboard players set @a fell 0
scoreboard players set @a piged 0
scoreboard players set @a flew 0

scoreboard objectives add class_id dummy
scoreboard players set NO_CLASS class_id 0
scoreboard players set HACKER class_id 1
scoreboard players set MAGE class_id 2
scoreboard players set MEDIC class_id 3
scoreboard players set TANK class_id 4
scoreboard players set ARCHER class_id 5
scoreboard players set BARD class_id 6
scoreboard players set NIGHT_WALKER class_id 7
scoreboard players set SCIENTIST class_id 8

# comments for my vsc-extention so i don't type anything wrong. Just ignore it

#define score_holder NO_CLASS NO_CLASS class_id
#define score_holder HACKER HACKER class_id
#define score_holder MAGE MAGE class_id
#define score_holder MEDIC MEDIC class_id
#define score_holder TANK TANK class_id
#define score_holder ARCHER ARCHER class_id
#define score_holder BARD BARD class_id
#define score_holder NIGHT_WALKER NIGHT_WALKER class_id
#define score_holder SCIENTIST SCIENTIST class_id

#define score_holder MAX_cldw MAX_cldw
#define entity MAX MAX
#define entity rand rand

scoreboard objectives add join trigger
scoreboard players enable @a join

scoreboard objectives add usedWeapon used:carrot_on_a_stick
scoreboard players set @a usedWeapon 0

scoreboard objectives add afk trigger
scoreboard players enable @a afk

scoreboard objectives add teleporter_list trigger
scoreboard players enable @a teleporter_list

scoreboard objectives add teleporter_info trigger
scoreboard players enable @a teleporter_info

scoreboard objectives add telep_reg dummy
scoreboard players set MAX telep_reg 0

scoreboard objectives add afk_cldw dummy
scoreboard players set MAX_cldw afk_cldw 300

scoreboard objectives add glider_boost_cldw dummy
scoreboard players set MAX_cldw glider_boost_cldw 70

scoreboard objectives add glider_boost_trail_t dummy
scoreboard players set MAX glider_boost_trail_t 25

scoreboard objectives add health health

scoreboard objectives add afk_link dummy
scoreboard players set MAX afk_link 0

function the_sirwolf:intern/classes/reset

