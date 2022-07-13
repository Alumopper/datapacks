# reset state
scoreboard players operation @s lcg_seed_lo16 %= @s lcg_1s
scoreboard players operation @s lcg_state_hi32 = @s lcg_seed_hi32
scoreboard players operation @s lcg_state_lo16 = @s lcg_seed_lo16
