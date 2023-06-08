scoreboard players set @s toggleGamemode 0

execute if score @s teleportData matches 0 run scoreboard players set @s teleportData 1

tag @s add breaker

execute if entity @s[gamemode=!spectator,tag=breaker] run function survival.tech:spectator/to_spectator
execute if entity @s[gamemode=!survival,tag=spectator,tag=breaker] run function survival.tech:spectator/to_survival