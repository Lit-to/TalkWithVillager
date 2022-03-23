scoreboard players set @s talk -1
#tellraw @a[distance=] {"text": "遠くに離れてしまったため、声が聞こえなくなったようだ...","color": "gray"}

data modify entity @s NoAI set value 0b
data modify entity @s Silent set value 0b
