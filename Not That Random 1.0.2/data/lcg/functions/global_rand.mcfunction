# refresh the state and output a "random" number
scoreboard players operation _global lcg_carry = _global lcg_state_lo16
scoreboard players operation _global lcg_state_lo16 *= _global lcg_multi_lo16
scoreboard players operation _global lcg_carry *= _global lcg_multi_hi32
scoreboard players operation _global lcg_state_hi32 *= _global lcg_multi_lo32
scoreboard players operation _global lcg_state_hi32 += _global lcg_carry

scoreboard players add _global lcg_state_lo16 11
execute if score _global lcg_seed_lo16 matches 0..10 run scoreboard players add _global lcg_state_hi32 1
scoreboard players operation _global lcg_carry = _global lcg_state_lo16
scoreboard players operation _global lcg_carry /= _global lcg_1s
scoreboard players operation _global lcg_carry %= _global lcg_1s
scoreboard players operation _global lcg_state_hi32 += _global lcg_carry
scoreboard players operation _global lcg_state_lo16 %= _global lcg_1s

# output (for further modification or ready to use)
scoreboard players operation _global lcg_output = _global lcg_state_hi32
