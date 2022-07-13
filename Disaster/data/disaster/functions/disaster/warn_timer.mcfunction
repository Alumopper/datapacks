#天灾警告
#
bossbar set disaster:timer color green
bossbar set disaster:timer visible true
execute if score dis_timer dis_timer < dis_pretime_yellow dis_temp run bossbar set disaster:timer color yellow
execute if score dis_timer dis_timer < dis_pretime_red dis_temp run bossbar set disaster:timer color red
execute store result bossbar disaster:timer value run scoreboard players get dis_timer dis_timer
scoreboard players operation dis_timer_s dis_timer = dis_timer dis_timer
scoreboard players operation dis_timer_s dis_timer /= C_20 dis_math_c
bossbar set disaster:timer name ["天灾倒计时:",{"score":{"name":"dis_timer_s","objective": "dis_timer"}},"s"]