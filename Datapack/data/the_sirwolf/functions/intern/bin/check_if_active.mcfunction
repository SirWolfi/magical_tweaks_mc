##
 # check_if_active.mcfunction
 # intern/bin
 #
 # Created by .
##

scoreboard players set @a was_inactive 0

execute as @a[scores={got_hurt=0,did_hit=0,usedWeapon=0}] run scoreboard players set @s was_inactive 1