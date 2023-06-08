tag @s remove breaker

tag @s add spectator

summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["spectator_stand","building_stand"]}

scoreboard players operation #tempData spectatorData > @e[type=armor_stand,tag=spectator_stand] spectatorData
scoreboard players add #tempData spectatorData 1

scoreboard players operation @s spectatorData = #tempData spectatorData
scoreboard players operation @e[type=armor_stand,tag=building_stand] spectatorData = #tempData spectatorData

scoreboard players reset #tempData spectatorData

tag @e[type=armor_stand,tag=building_stand] remove building_stand

forceload add ~ ~

gamemode spectator @s