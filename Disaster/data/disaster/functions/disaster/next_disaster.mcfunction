#预警时间
function disaster:random/36000
execute store result score dis_pretime dis_temp run scoreboard players operation _global lcg_output += C_12000 dis_math_c 
#天灾倒计时
function disaster:random/144000
execute store result score dis_timer dis_timer run scoreboard players operation _global lcg_output += C_288000 dis_math_c 