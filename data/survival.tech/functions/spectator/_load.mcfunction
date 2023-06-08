scoreboard objectives add toggleGamemode trigger
scoreboard objectives add toggleTeleport trigger

scoreboard objectives add spectatorData dummy
scoreboard objectives add teleportData dummy

scoreboard players set #dummyData teleportData -1

execute at @e[type=armor_stand,tag=spectator_stand] run forceload remove ~ ~
kill @e[type=armor_stand,tag=spectator_stand]