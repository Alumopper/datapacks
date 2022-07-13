#随机天灾时间
function disaster:random/72000
execute store result score dis_timer dis_timer run scoreboard players operation _global lcg_output += C_36000 dis_math_c
#随机天灾种类   
function disaster:random/20
scoreboard players operation dis_type dis_temp = _global lcg_output
#DEBUG
scoreboard players set dis_type dis_temp 4
#生成天灾实体
summon area_effect_cloud 0 1 0 {Duration:1,Radius:0.1f,Tags:[disaster_core]}
execute unless score dis_type dis_temp matches 0..4 store result entity @e[tag=disaster_core,limit=1] Duration int 1.0 run scoreboard players get dis_timer dis_timer
execute if score dis_type dis_temp matches 0..4 store result entity @e[tag=disaster_core,limit=1] Duration int 0.5 run scoreboard players get dis_timer dis_timer
#
execute store result bossbar disaster:timer max run data get entity @e[tag=disaster_core,limit=1] Duration
execute store result score dis_timer dis_timer run bossbar get disaster:timer max
scoreboard players operation dis_timer dis_timer *= C_-1 dis_math_c
#挑选玩家为局部天灾受害者
tag @r add disaster_victim
execute at @a[tag=disaster_victim] run summon armor_stand ~ ~ ~ {Tags:["disaster_victim_core"],Marker:true,Invisible:true,NoGravity:true}
#天灾种类
#0-泥沙雨
execute if score dis_type dis_temp matches 0 run tag @e[tag=disaster_core,limit=1] add disaster_mud_rain
execute if score dis_type dis_temp matches 0 run tellraw @a {"text":"泥沙从天空倾泻而下……","italic": true,"color": "gray"}
#1-尸潮
execute if score dis_type dis_temp matches 1 run tag @e[tag=disaster_core,limit=1] add disaster_corpse_tide
execute as @e[tag=disaster_corpse_tide] run function disaster:disaster/each/corpse_tide/tick
execute if score dis_type dis_temp matches 1 run tellraw @a {"text":"死亡的灵魂蠢蠢欲动……","italic": true,"color": "gray"}
#2-局部风暴
execute if score dis_type dis_temp matches 2 run tag @e[tag=disaster_core,limit=1] add disaster_storm
execute as @e[tag=disaster_storm] run function disaster:disaster/each/storm/tick
execute if score dis_type dis_temp matches 2 run tellraw @a {"text":"风暴正在形成……","italic": true,"color": "gray"}
#3-大型陨石(TODO)
#execute if score dis_type dis_temp matches 3 run tag @e[tag=disaster_core,limit=1] add disaster_great_meteorite
#4-陨石雨
execute if score dis_type dis_temp matches 4 run tag @e[tag=disaster_core,limit=1] add disaster_meteorite_rain
execute if score dis_type dis_temp matches 4 run tellraw @a {"text":"天降之火……","italic": true,"color": "gray"}
#5-生命静止
execute if score dis_type dis_temp matches 5 run tag @e[tag=disaster_core,limit=1] add disaster_life_still
execute if score dis_type dis_temp matches 5 run function disaster:disaster/each/life_still/start
execute if score dis_type dis_temp matches 5 run gamerule randomTickSpeed 0
execute if score dis_type dis_temp matches 5 run tellraw @a {"text":"生命的时钟正在慢慢停止……","italic": true,"color": "gray"}
#6-不稳定水
execute if score dis_type dis_temp matches 6 run tag @e[tag=disaster_core,limit=1] add disaster_unstable_water
execute if score dis_type dis_temp matches 6 run tellraw @a {"text":"水体开始沸腾……","italic": true,"color": "gray"}
#7-地壳失稳
execute if score dis_type dis_temp matches 7 run tag @e[tag=disaster_core,limit=1] add disaster_earthquake
execute as @e[tag=disaster_earthquake] run scoreboard players set @a dis_stone_count 0
execute if score dis_type dis_temp matches 7 run tellraw @a {"text":"大地深处传来不详的震荡……","italic": true,"color": "gray"}
#8-幻星闪耀
execute if score dis_type dis_temp matches 8 run tag @e[tag=disaster_core,limit=1] add disaster_magic_star
execute if score dis_type dis_temp matches 8 run execute if score dis_type dis_temp matches 8 run function disaster:disaster/each/magic_star/new_star

#遥远的天灾
execute if score dis_type dis_temp matches 9.. run function disaster:disaster/far

bossbar set disaster:timer visible false