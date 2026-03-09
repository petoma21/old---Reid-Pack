scoreboard players set @s raid_advance -3
tellraw @s {"text":"残基がなくなったため、あなたのレイド挑戦は終了しました。","color":"red","bold":true}
give @s minecraft:golden_apple 2
tellraw @s {"text":"参加賞として金のリンゴを2つ獲得しました!","color":"aqua","bold":true}
scoreboard players set @s raid_life 0
scoreboard players remove 参加者残り raid_advance 1