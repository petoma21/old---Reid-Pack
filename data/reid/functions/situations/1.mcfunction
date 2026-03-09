execute if score タイマー2 raid_advance matches 20.. run function reid:join_timer
scoreboard players add タイマー2 raid_advance 1
execute store result bossbar minecraft:raid_jointimer value run scoreboard players get タイマー raid_advance
bossbar set minecraft:raid_jointimer name [{"text":"RAID参加者受付中","color":"green","bold":true},{"text":"  受付終了まで残り","color":"yellow","bold":true},{"text":":","color":"gray","bold":false},{"score":{"name":"タイマー","objective":"raid_advance"},"color":"red","bold":false},{"text":"秒","color":"red"}]
scoreboard players set @a raid_damage 0
execute if score タイマー raid_advance matches ..0 run function reid:standby