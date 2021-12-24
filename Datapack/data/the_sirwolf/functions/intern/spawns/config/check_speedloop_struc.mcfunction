##
 # check_speedloop_struc.mcfunction
 # intern/spawns/config
 #
 # Created by .
##

tag @s remove valid
scoreboard players set tmp variables 0

execute if data entity @s {Facing:1b} run scoreboard players add tmp variables 1

execute if block ^1 ^ ^-1 stone run scoreboard players add tmp variables 1
execute if block ^1 ^ ^ stone run scoreboard players add tmp variables 1
execute if block ^1 ^ ^1 stone run scoreboard players add tmp variables 1
execute if block ^1 ^ ^2 stone run scoreboard players add tmp variables 1

execute if block ^-1 ^ ^-1 stone run scoreboard players add tmp variables 1
execute if block ^-1 ^ ^ stone run scoreboard players add tmp variables 1
execute if block ^-1 ^ ^1 stone run scoreboard players add tmp variables 1
execute if block ^-1 ^ ^2 stone run scoreboard players add tmp variables 1

execute if block ^ ^ ^-1 stone run scoreboard players add tmp variables 1
execute if block ^ ^ ^2 stone run scoreboard players add tmp variables 1

execute if score tmp variables matches 11 run tag @s add valid

#scoreboard players set tmp variables 0
kill @s[tag=!valid]