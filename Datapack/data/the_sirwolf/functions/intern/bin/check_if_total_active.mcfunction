##
 # check_if_total_active.mcfunction
 # intern/bin
 #
 # Created by .
##

scoreboard players set @a was_tot_inactive 0

execute as @a[scores={got_hurt=0,did_hit=0,jump=0,moved=0,flew=0,usedWeapon=0,sneak=0,piged=0,fell=0}] run scoreboard players set @s was_tot_inactive 1