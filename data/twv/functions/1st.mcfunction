#> twv:1st


execute positioned ~ ~2 ~ run function twv:who

execute as @e[type=villager,tag=talk,sort=nearest,limit=1] at @s run function twv:push
#scoreboard players operation @s talk = @e[tag=talk,type=villager,sort=nearest,limit=1] talk
#execute if score @e[tag=talk,type=villager,sort=nearest,limit=1] talk matches 0 run scoreboard players set @s talk 1

execute at @e[type=villager,tag=talk,sort=nearest,limit=1] run tp @e[type=villager,tag=talk,sort=nearest,limit=1] ~ ~ ~ facing entity @s[distance=..4] feet
#execute at @e[type=villager,tag=talk,sort=nearest,limit=1] if entity @s[distance=4..] run tellraw @s [{"text": "遠すぎて声が届いてなさそうだ・・・","color": "gray"}]

tag @e remove talk

