#天灾警告
#
bossbar set disaster:timer color white
bossbar set disaster:timer visible true
execute store result score dis_timeremain dis_temp run data get entity @e[tag=disaster_core,limit=1] Age
scoreboard players operation dis_timeremain dis_temp += dis_timer dis_timer
scoreboard players operation dis_timeremain dis_temp *= C_-1 dis_math_c
execute store result bossbar disaster:timer value run scoreboard players get dis_timeremain dis_temp
scoreboard players operation dis_timeremain dis_temp /= C_20 dis_math_c
bossbar set disaster:timer name ["天灾将在:",{"score":{"name":"dis_timeremain","objective": "dis_temp"}},"s后结束"]