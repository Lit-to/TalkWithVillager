#> twv:tick
execute as @a[scores={villager=1..},nbt={SelectedItem:{tag:{twv:1b}}}] at @s run function twv:regi 

#execute as @a[scores={villager=1..}] at @s run function twv:1st
execute as @a[scores={villager=1..},nbt=!{SelectedItem:{tag:{twv:1b}}}] at @s run function twv:1st
#execute as @e[type=villager,tag=talkable,scores={talk=0..}] at @s positioned ~ ~2 ~ run particle dust 0.2 1 0 0.5 ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[type=villager,tag=talkable,scores={talk=0..}] at @s unless entity @a[distance=..4,sort=nearest,limit=1] run function twv:far


execute as @a[scores={villager=1..}] run scoreboard players reset @s villager

