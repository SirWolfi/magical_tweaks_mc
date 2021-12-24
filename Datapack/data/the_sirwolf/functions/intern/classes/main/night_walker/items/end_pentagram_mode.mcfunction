##
 # end_pentagram_mode.mcfunction
 # intern/classes/main/night_walker/items
 #
 # Created by .
##

attribute @s generic.max_health base set 20

playsound entity.iron_golem.death master @a
playsound entity.ghast.death master @a
effect give @s slowness 10 1 true
effect give @s weakness 15 250 true
effect give @s poison 10 0 true

scoreboard players set @s pentagram_duration 0
