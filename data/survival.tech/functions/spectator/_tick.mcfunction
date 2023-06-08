execute as @a[scores={toggleGamemode=1..}] at @s run function survival.tech:spectator/toggle_gamemode
execute as @a[scores={toggleTeleport=1..}] at @s run function survival.tech:spectator/toggle_teleport

scoreboard players enable @a toggleGamemode
scoreboard players enable @a toggleTeleport