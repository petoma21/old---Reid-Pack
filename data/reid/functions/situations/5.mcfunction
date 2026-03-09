execute if score タイマー2 raid_advance matches 20.. run function reid:join_timer
scoreboard players add タイマー2 raid_advance 1
execute store result bossbar minecraft:raid_jointimer value run scoreboard players get タイマー raid_advance
execute if score 状況 raid_advance matches 5 if score タイマー raid_advance matches ..30 run function reid:after/give
execute if score 状況 raid_advance matches 6 if score タイマー raid_advance matches ..0 run function reid:after/move_g
bossbar set minecraft:raid_jointimer name [{"text":"お疲れさまでした！  ","color":"green","bold":true},{"text":"極楽部屋 移動まであと ","color":"yellow","bold":true},{"score":{"name":"タイマー","objective":"raid_advance"},"color":"aqua","bold":false},{"text":"秒","color":"aqua","bold":false}]
