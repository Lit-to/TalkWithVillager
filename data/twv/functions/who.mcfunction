#particle dust 0.2 1 0 0.5 ~ ~ ~ 0 0 0 0.1 1 force @a

#say @e[type=villager,sort=nearest,limit=1,distance=..2]

execute if entity @s[distance=..4] as @e[type=villager,sort=nearest,limit=1,distance=..2] run tag @s add talk
#execute if entity @s[distance=..4] as @e[type=villager,sort=nearest,limit=1,distance=..2] at @s run particle dust 0.969 0 1 10 ~ ~ ~ 0 20 0 1 200 force @a

#execute if entity @e[tag=talk] run say @e[tag=talk]
execute if entity @s[distance=4..] run tellraw @s [{"text": "遠すぎて声が届いてなさそうだ・・・","color": "gray"}]
execute if entity @s[distance=..4] unless entity @e[type=villager,tag=talk] positioned ^ ^ ^0.1 run function twv:who
#execute unless entity @s[distance=..4] run particle dust 0 0 0 1 ~ ~ ~ 0 20 0 1 200 force @a

#execute if entity @s[distance=..4] run tag @e[type=villager,sort=nearest,limit=1] add talk



