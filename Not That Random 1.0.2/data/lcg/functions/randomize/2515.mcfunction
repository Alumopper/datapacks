#get seed and set initial state from random entity UUID
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:[lcg_randomizer]}
execute store result score @s lcg_seed_hi32 run data get entity @e[tag=lcg_randomizer,limit=1] UUID[1]
execute store result score @s lcg_seed_lo16 run data get entity @e[tag=lcg_randomizer,limit=1] UUID[3]
scoreboard players operation @s lcg_seed_lo16 %= _global lcg_1s
kill @e[tag=lcg_randomizer]

# reset state
scoreboard players operation @s lcg_state_hi32 = @s lcg_seed_hi32
scoreboard players operation @s lcg_state_lo16 = @s lcg_seed_lo16