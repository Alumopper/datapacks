#天灾倒计时
execute if score dis_timer dis_timer matches 0 run function disaster:disaster/new_disaster
execute if entity @a if score dis_timer dis_timer matches 1.. run scoreboard players remove dis_timer dis_timer 1
    execute if score dis_timer dis_timer = dis_pretime dis_temp run function disaster:disaster/warn
    execute if score dis_timer dis_timer matches 0.. if score dis_timer dis_timer < dis_pretime dis_temp run function disaster:disaster/warn_timer