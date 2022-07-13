tellraw @a {"text":"新的天灾正在酝酿……","color": "gray","italic": true}
execute store result bossbar disaster:timer max run scoreboard players get dis_pretime dis_temp
#三阶段预警计算
scoreboard players operation dis_pretime_yellow dis_temp = dis_pretime dis_temp
scoreboard players operation dis_pretime_yellow dis_temp /= C_2 dis_math_c
scoreboard players operation dis_pretime_red dis_temp = dis_pretime dis_temp
scoreboard players operation dis_pretime_red dis_temp /= C_5 dis_math_c