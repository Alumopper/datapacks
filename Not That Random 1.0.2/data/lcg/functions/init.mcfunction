scoreboard objectives add lcg_seed_hi32 dummy
scoreboard objectives add lcg_seed_lo16 dummy
scoreboard objectives add lcg_state_hi32 dummy
scoreboard objectives add lcg_state_lo16 dummy
scoreboard objectives add lcg_output dummy

scoreboard objectives add data_version dummy

# LCG parameters
scoreboard objectives add lcg_multi_lo16 dummy
scoreboard objectives add lcg_multi_lo32 dummy
scoreboard objectives add lcg_multi_hi32 dummy
scoreboard objectives add lcg_increment dummy
scoreboard objectives add lcg_carry dummy
scoreboard objectives add lcg_1s dummy

# 0x5DEECE66D
scoreboard players set _global lcg_multi_hi32 384748
scoreboard players set _global lcg_multi_lo16 58989
scoreboard players set _global lcg_multi_lo32 -554899859

# 0xB
scoreboard players set _global lcg_increment 11

# 0x10000
scoreboard players set _global lcg_1s 65536
