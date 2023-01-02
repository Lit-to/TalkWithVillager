#> twv:register/fin

#loot insert ~ ~2 ~ loot twv:totem
data modify entity @s Inventory set value []

execute unless block ~ ~2 ~ shulker_box{Items:[]} run data modify entity @s Inventory prepend from block ~ ~2 ~ Items[0]
execute unless block ~ ~2 ~ shulker_box{Items:[]} run data modify entity @s CustomName set from block ~ ~2 ~ Items[0].tag.display.Name
#execute unless block ~ ~2 ~ shulker_box{Items:[]} run tag @s add talkabl e

#execute if block ~ ~2 ~ shulker_box{Items:[]} run tag @s remove talkabl e

#execute unless block ~ ~2 ~ shulker_box{Items:[{tag:{dummy:1b}}]} run data modify entity @s CustomName set from block ~ ~2 ~ Items[1]. 
#data modify entity @s Inventory[0].Count set value 1b
#data modify entity @s CustomName set from block ~ ~2 ~ Items[0].tag.title

data modify entity @s NoAI set value 0b
data modify entity @s Silent set value 0b
data modify entity @s CanPickUpLoot set value 1b


setblock ~ ~2 ~ air
scoreboard players set @s talk -3
