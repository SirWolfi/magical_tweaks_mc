##
 # explode.mcfunction
 # intern/classes/main/scientist/items/land_mine
 #
 # Created by .
##

execute if score @s land_mine_livetime_max = NORM land_mine_livetime_max run summon creeper ~ ~ ~ {ExplosionRadius:4,NoGravity:1b,Fuse:1,ignited:1b,Invulnerable:1b}
execute if score @s land_mine_livetime_max = NORM_p land_mine_livetime_max run summon creeper ~ ~ ~ {ExplosionRadius:2,NoGravity:1b,Fuse:1,ignited:1b,Invulnerable:1b}


kill @s
