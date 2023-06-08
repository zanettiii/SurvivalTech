scoreboard players set @s toggleTeleport 0

execute if score @s teleportData matches 0 run scoreboard players set @s teleportData 1

scoreboard players operation @s teleportData *= #dummyData teleportData

execute if score @s teleportData matches 1 run title @s actionbar [{"text":"Teleport Back: ", "color":"white"},{"text":"ON","color":"dark_green"}]
execute if score @s teleportData matches -1 run title @s actionbar [{"text":"Teleport Back: ", "color":"white"},{"text":"OFF","color":"dark_red"}]