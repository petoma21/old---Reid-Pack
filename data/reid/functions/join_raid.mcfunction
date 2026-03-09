execute if score 状況 raid_advance matches 1 if score @s raid_advance matches -1 run execute as @s at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 2
execute if score 状況 raid_advance matches 1 if score @s raid_advance matches -1 run tellraw @s {"text":"すでに参加申請済みです!","color":"red","bold":true}
execute if score 状況 raid_advance matches 2 if score @s raid_advance matches -1 run execute as @s at @s run playsound minecraft:random.orb master @s ~ ~ ~ 1 1.5
execute if score 状況 raid_advance matches 2 if score @s raid_advance matches -1 run tellraw @s {"text":"現在移動できません。レイド開始までしばらくお待ちください。","color":"red"}
execute if score 状況 raid_advance matches 3 unless score @s raid_advance matches 1..3 if score @s raid_death matches 1.. run tellraw @s {"text":"残基が0のため参加できません!","color":"red","bold":true}
execute if score 状況 raid_advance matches 1 unless score @s raid_advance matches -1 run execute as @s at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute if score 状況 raid_advance matches 1 unless score @s raid_advance matches -1 run tellraw @s {"text":"レイドに参加を申請しました！","color":"green","bold":true}
execute if score 状況 raid_advance matches 1 unless score @s raid_advance matches -1 run scoreboard players add 参加者 raid_advance 1
execute if score 状況 raid_advance matches 1 unless score @s raid_advance matches -1 run scoreboard players add 参加者残り raid_advance 1
execute if score 状況 raid_advance matches 1 unless score @s raid_advance matches -1 run tellraw @a [{"selector":"@s","color":"yellow"},{"text":"さんがレイド参加者として登録しました！","color":"green"},{"text":"\n現在参加者","color":"green","bold":true},{"text":"：","color":"gray","bold":true},{"score":{"name":"参加者","objective":"raid_advance"},"color":"aqua","bold":false},{"text":"人","color":"green","bold":false}]
execute if score 状況 raid_advance matches 1 unless score @s raid_advance matches -1 run scoreboard players set @s raid_advance -1
execute if score 状況 raid_advance matches 1..8 unless score @s raid_advance matches -3..3 run tellraw @s {"text":"参加者ではないためゲームに参加できません!","color":"red","bold":true}
execute unless score 状況 raid_advance matches 1..8 run tellraw @s {"text":"開催中のゲームがありません!","color":"red","bold":true}
execute if score 状況 raid_advance matches 3 if score @s raid_advance matches 1..3 if score @s raid_death matches 1.. run function reid:rejoin
execute if score 状況 raid_advance matches 3 if score @s raid_advance matches 1..3 unless score @s raid_death matches 1.. run execute as @s run function reid:re-rejoin
