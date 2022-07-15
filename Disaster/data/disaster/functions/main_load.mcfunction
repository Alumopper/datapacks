#计分板
#天灾计时器
#负数为发生天灾，反之未发生
#天灾发生的频率为rand(4,6)/min{玩家数目,3}
#288,000~432,000
#提前十到四十分钟预警
#12000~48000
scoreboard objectives add dis_timer dummy
    execute unless score dis_timer dis_timer matches -2147483648..2147483647 run function disaster:init
#零食变量
scoreboard objectives add dis_temp dummy
#中央防御塔能量
scoreboard objectives add dis_protower dummy
    execute as @e[tag=disaster_tower] unless score @s dis_protower matches -2147483648..2147483647 run scoreboard players set @s dis_protower 70000
#数学常数
scoreboard objectives add dis_math_c dummy
    scoreboard players set C_-1 dis_math_c -1
    scoreboard players set C_2 dis_math_c 2
    scoreboard players set C_5 dis_math_c 5
    scoreboard players set C_20 dis_math_c 20
    scoreboard players set C_12000 dis_math_c 12000
    scoreboard players set C_12000 dis_math_c 12000
    scoreboard players set C_36000 dis_math_c 36000
    scoreboard players set C_72000 dis_math_c 72000
    scoreboard players set C_144000 dis_math_c 144000
    scoreboard players set C_288000 dis_math_c 288000
#统计
#挖掘石头
scoreboard objectives add dis_stone_count mined:stone 
#数据版本
scoreboard objectives add dis_data dummy
    #function disaster:version_check
    scoreboard players set data_version dis_data 1000000
#NTR随机数
#生成种子
function lcg:global_randomize

#bossbar
bossbar add disaster:timer "天灾倒计时"
bossbar set disaster:timer players @a
bossbar add disaster:power "防御塔能量"
    bossbar set disaster:power max 100000
    bossbar set disaster:power color blue
#
tellraw @a "[天灾]ver b1.1.0 加载成功"