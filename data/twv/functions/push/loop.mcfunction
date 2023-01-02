#> twv:push/loop


execute unless data entity @s CustomName run tellraw @a[distance=..4] [{"nbt":"out[0]","storage":"twv:","interpret":true}]
execute if data entity @s CustomName run tellraw @a[distance=..4] [{"text": "["},{"nbt":"CustomName","entity":"@s","interpret": true},{"text": "]"},{"nbt":"out[0]","storage":"twv:","interpret":true}]
data remove storage twv: out[0]
#execute unless data storage twv: {out:[]} run function twv:push/loop

