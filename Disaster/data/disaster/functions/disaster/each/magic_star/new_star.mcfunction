#随机幻星种类   
function disaster:random/5
scoreboard players operation star_type dis_temp = _global lcg_output
#DEBUG
#scoreboard players set star_type dis_temp 4
#0-暗幻星
execute if score star_type dis_temp matches 0 run tag @e[tag=disaster_core,limit=1] add disaster_darkstar
execute if score star_type dis_temp matches 0 run function disaster:disaster/each/magic_star/each/dark/trigger
execute if score star_type dis_temp matches 0 run tellraw @a {"text":"暗幻星闪耀在天空中……","italic": true,"color": "gray"}
#1-火幻星
execute if score star_type dis_temp matches 1 run tag @e[tag=disaster_core,limit=1] add disaster_firestar
execute if score star_type dis_temp matches 1 run tellraw @a {"text":"火幻星闪耀在天空中……","italic": true,"color": "gray"}
#2-月幻星
execute if score star_type dis_temp matches 2 run tag @e[tag=disaster_core,limit=1] add disaster_moonstar
execute if score star_type dis_temp matches 2 run tellraw @a {"text":"月幻星闪耀在天空中……","italic": true,"color": "gray"}
#3-翠幻星
execute if score star_type dis_temp matches 3 run tag @e[tag=disaster_core,limit=1] add disaster_emeraldstar
execute if score star_type dis_temp matches 3 run tellraw @a {"text":"翠幻星闪耀在天空中……","italic": true,"color": "gray"}
#4-影幻星
execute if score star_type dis_temp matches 4 run tag @e[tag=disaster_core,limit=1] add disaster_shadowstar
execute if score star_type dis_temp matches 4 run tellraw @a {"text":"影幻星闪耀在天空中……","italic": true,"color": "gray"}