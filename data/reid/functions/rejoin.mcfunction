scoreboard players set @s raid_death 0
tp @s -12.50 -56.00 140.49 1260.29 -2.40
scoreboard players remove @s raid_advance 1
execute as @s run scoreboard players operation @s raid_life = @s raid_advance