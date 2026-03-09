execute if score タイマー2 raid_advance matches 20.. run function reid:join_timer
scoreboard players add タイマー2 raid_advance 1
execute store result bossbar minecraft:raid_jointimer value run scoreboard players get タイマー raid_advance
execute if score 状況 raid_advance matches 7 if score タイマー raid_advance matches ..0 run function reid:after/finish
bossbar set minecraft:raid_jointimer name [{"text":"極楽部屋へようこそ！  ","color":"green","bold":true},{"text":"交易終了まで","color":"yellow","bold":true},{"score":{"name":"タイマー","objective":"raid_advance"},"color":"aqua","bold":false},{"text":"秒","color":"aqua","bold":false}]