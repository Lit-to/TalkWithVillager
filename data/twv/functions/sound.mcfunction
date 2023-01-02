#> twv:sound

#data modify storage math: in set value [1,2]
#function #math:dice
#execute store result score dice talk run data get storage math: in

#execute if score dice talk matches 1 run playsound minecraft:entity.villager.trade master @a ~ ~ ~ 0.3 1
#execute if score dice talk matches 2 run playsound minecraft:entity.villager.yes master @a ~ ~ ~ 0.3 1

#scoreboard players reset dice talk

playsound minecraft:entity.villager.trade master @a ~ ~ ~ 0.3 1


