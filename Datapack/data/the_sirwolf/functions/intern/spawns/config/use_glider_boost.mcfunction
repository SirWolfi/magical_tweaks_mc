##
 # use_glider_boost.mcfunction
 # intern/spawns/config
 #
 # Created by .
##

execute if score @s glider_boost_cldw >= MAX_cldw glider_boost_cldw run effect give @s levitation 1 10 true
#execute if score @s glider_boost_cldw >= MAX_cldw glider_boost_cldw run effect give @s hunger 2 40 true
execute if score @s glider_boost_cldw >= MAX_cldw glider_boost_cldw run scoreboard players set @s glider_boost_cldw 0