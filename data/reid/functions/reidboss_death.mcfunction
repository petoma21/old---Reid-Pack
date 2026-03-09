scoreboard players set タイマー raid_advance 60
bossbar set minecraft:raid_jointimer max 60
scoreboard players set 状況 raid_advance 5
execute as @a[scores={raid_advance=0..3}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
tellraw @a[gamemode=creative] [{"text":"レイドが参加者の勝利で終了しました","color":"gold","bold":true},{"text":"\n生存者：","color":"green"},{"selector":"@a[scores={raid_advance=0..3}]","color":"aqua","bold":false}]
tellraw @a[scores={raid_advance=0..3}] [{"text":"=========================\n\n","color":"green","bold":true},{"text":"レイドボスに勝利しました！おめでとうございます！","bold":true},{"text":"\n30秒後に報酬付与、さらに30秒後に極楽部屋に"},{"text":"\n移動します。インベントリをあけておいてください!"},{"text":"\n\n========================="}]
execute in minecraft:reid run setblock 0 -63 1 minecraft:redstone_block
execute as @a[scores={raid_advance=0..3}] run scoreboard players operation @s raid_damage_max = @s raid_damage
execute as @a[scores={raid_advance=0..3}] run scoreboard players operation $MAX raid_damage_max > @s raid_damage_max
scoreboard players operation @a[scores={raid_advance=0..3}] raid_damage_max -= $MAX raid_damage_max
execute as @a[scores={raid_damage_max=0,raid_advance=0..3}] run tag @s add raid_dame_max
scoreboard players operation @a[scores={raid_advance=0..3}] raid_damage_max += $MAX raid_damage_max
scoreboard players reset $MAX raid_damage_max
tellraw @a[scores={raid_advance=0..3}] [{"text":"【与えたダメージ1位】","color":"yellow","bold":true,"italic":false},{"text":"\n貢献者1位は","color":"green","bold":true,"italic":false},{"selector":"@a[tag=raid_dame_max]","color":"gold","italic":false},{"text":"さんで","color":"green","bold":true,"italic":false},{"score":{"name":"@a[tag=raid_dame_max,limit=1]","objective":"raid_damage_max"},"color":"yellow","bold":true,"italic":false},{"text":"ダメージでした！","color":"green","bold":true,"italic":false},{"text":"\nおめでとうございます！","color":"green","bold":true,"italic":false}]