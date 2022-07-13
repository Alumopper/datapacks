# reset state
scoreboard players operation _global lcg_seed_lo16 %= _global lcg_1s
scoreboard players operation _global lcg_state_hi32 = _global lcg_seed_hi32
scoreboard players operation _global lcg_state_lo16 = _global lcg_seed_lo16
