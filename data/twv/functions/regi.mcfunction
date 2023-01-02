#> twv:regi

#会話村人登録
tag @e remove talk
function twv:who
execute as @e[tag=talk,sort=nearest,limit=1] unless score @s talk matches -3.. run scoreboard players set @s talk -1 
execute as @e[tag=talk,sort=nearest,limit=1] at @s if score @s talk matches -2 run function twv:register/fin
execute as @e[tag=talk,sort=nearest,limit=1] at @s if score @s talk matches -1 run function twv:register/shl

execute as @e[tag=talk,sort=nearest,limit=1] at @s if score @s talk matches -3 run scoreboard players set @s talk -1
tag @e remove talk

