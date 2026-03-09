execute in minecraft:reid run tp @s -12.50 -56.00 140.49 1260.29 -2.40
execute as @s[scores={raid_advance=-1}] run scoreboard players reset @a raid_death
execute as @s[scores={raid_advance=-1}] run scoreboard players set @s raid_advance 3
execute as @s[scores={raid_advance=-1}] run scoreboard players set @s raid_damage 0
execute as @s[scores={raid_advance=-1}] run execute as @s run scoreboard players operation @s raid_life = @s raid_advance