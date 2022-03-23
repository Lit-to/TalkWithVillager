
#execute as @a if score @s talk = @e[type=villager,sort=nearest,limit=1,tag=talk] talk run tellraw @s [{"nbt":"Inventory[0].tag.pages[0]","entity":"@e[type=villager,sort=nearest,limit=1]","interpret":"True"}]
data modify storage array_util: Array set value []
data modify storage array_util: Array set from entity @s Inventory[0].tag.pages
execute unless score @s talk matches 0.. run scoreboard players set @s talk -1
scoreboard players add @s talk 1
scoreboard players operation $Move ArrayUtilInput = @s talk 
data modify entity @s NoAI set value 1b
execute store result score arraycount talk run data get storage array_util: Array
function array_util:api/move
tellraw @a[distance=..4] [{"text": "["},{"nbt":"CustomName","entity":"@s","interpret": true},{"text": "]"},{"nbt":"Array[-1]","storage":"array_util:","interpret":true}]
#tellraw @a[distance=..4] [{"text": "["},{"nbt":"CustomName","entity":"@s","interpret": true},{"text": "]"},{"text":">>>次へ","bold": true,"italic": true,"underlined": true,"clickEvent": { "action": ""}}]
execute if score @s talk matches 2.. at @s run function twv:sound
function array_util:api/revert
scoreboard players add $Move ArrayUtilInput 1
execute if score $Move ArrayUtilInput = arraycount talk run function twv:fin
#finishと記入してあったら最後のページとする処理はやめ
#function array_util:api/move
#data modify storage twv: comp set from storage array_util: Array[-1]
#execute if data storage twv: {comp:'{"text":"finish"}'} run function twv:fin
#data remove storage twv: comp

scoreboard players reset arraycount talk 

function array_util:api/force_delete_cache

data modify entity @s NoAI set value 1b
data modify entity @s Silent set value 1b

