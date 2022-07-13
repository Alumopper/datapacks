#_global lcg_output 
function lcg:global_rand
scoreboard players operation _global lcg_output %= C_20 dis_math_c
execute if score _global lcg_output matches ..0 run scoreboard players operation _global lcg_output *= C_-1 dis_math_c