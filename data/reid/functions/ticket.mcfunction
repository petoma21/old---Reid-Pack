scoreboard objectives add raid_ticket dummy
execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{CommandPanelsHotbar: "raid_start:-1"}}}] run scoreboard players set @s raid_ticket 1
execute as @s at @s unless entity @s[nbt={SelectedItem:{id:"minecraft:paper",tag:{CommandPanelsHotbar: "raid_start:-1"}}}] run scoreboard players set @s raid_ticket 2
execute as @s at @s if entity @s[scores={raid_ticket=1}] if score 状況 raid_advance matches 0 run clear @s minecraft:paper{CommandPanelsHotbar: "raid_start:-1"} 1
execute as @s at @s if entity @s[scores={raid_ticket=1}] if score 状況 raid_advance matches 0 run function reid:join_s
execute as @s at @s if entity @s[scores={raid_ticket=1}] if score 状況 raid_advance matches 0 run tellraw @a [{"selector":"@s","color":"gold"},{"text":"さんがチケットを使用し、レイドを起動しました！","color":"green","bold":true}]
execute as @s at @s if entity @s[scores={raid_ticket=1}] unless score 状況 raid_advance matches 0 run tellraw @s {"text":"すでにゲームが起動しているため、ゲームを起動できませんでした","color":"red","bold":true}
execute as @s at @s if entity @s[scores={raid_ticket=2}] run tellraw @s {"text":"チケットを持っていないためレイドを起動できませんでした","color":"red","bold":true}
scoreboard objectives remove raid_ticket