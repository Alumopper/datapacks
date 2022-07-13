# refresh the state
# state = (state * 25214903917 + 11) mod (2 ^ 48)
scoreboard players operation @s lcg_carry = @s lcg_state_lo16
scoreboard players operation @s lcg_state_lo16 *= _global lcg_multi_lo16
scoreboard players operation @s lcg_carry *= _global lcg_multi_hi32
scoreboard players operation @s lcg_state_hi32 *= _global lcg_multi_lo32
scoreboard players operation @s lcg_state_hi32 += @s lcg_carry

scoreboard players add @s lcg_state_lo16 11
execute if score @s lcg_seed_lo16 matches 0..10 run scoreboard players add @s lcg_state_hi32 1
scoreboard players operation @s lcg_carry = @s lcg_state_lo16
scoreboard players operation @s lcg_carry /= _global lcg_1s
scoreboard players operation @s lcg_carry %= _global lcg_1s
scoreboard players operation @s lcg_state_hi32 += @s lcg_carry
scoreboard players operation @s lcg_state_lo16 %= _global lcg_1s

# output (for further modification or ready to use)
scoreboard players operation @s lcg_output = @s lcg_state_hi32
