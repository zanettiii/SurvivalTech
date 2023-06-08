tag @s remove breaker

tag @s remove spectator

scoreboard players operation #tempData spectatorData = @s spectatorData

execute as @e[type=armor_stand,tag=spectator_stand] if score @s spectatorData = #tempData spectatorData run tag @s add active_stand

scoreboard players reset #tempData spectatorData

execute if score @s teleportData matches 1 run tp @e[type=armor_stand,tag=active_stand,limit=1]

execute at @e[type=armor_stand,tag=active_stand] run forceload remove ~ ~

kill @e[type=armor_stand,tag=active_stand]

gamemode survival @s