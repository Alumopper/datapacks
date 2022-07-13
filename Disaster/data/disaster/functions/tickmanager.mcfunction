#tick管理，性能优化
#主tick，随时都在运行
function disaster:main_tick
#主计时器，随时都在运行
function disaster:main_timer
#天灾tick
execute if score dis_timer dis_timer matches ..-1 run function disaster:disaster/tick
#防御塔tick
execute as @e[tag=disaster_tower] at @s run function disaster:tower/tick