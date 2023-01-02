#> twv:register/shl

setblock ~ ~2 ~ shulker_box
data modify block ~ ~2 ~ Items prepend from entity @s Inventory[0]

data modify entity @s NoAI set value 1b
data modify entity @s Silent set value 1b
scoreboard players set @s talk -2


