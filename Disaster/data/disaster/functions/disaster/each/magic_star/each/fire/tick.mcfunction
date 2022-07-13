execute as @a if predicate disaster:under_sky run setblock ~ ~ ~ fire
execute as @e[type=!player] if predicate disaster:under_sky run data modify entity @s Fire set value 1