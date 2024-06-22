scoreboard objectives add ttid dummy
execute as @a at @s unless entity @s[scores={ttid=1..}] run scoreboard players set @s ttid 0
execute as @r[scores={ttid=..0}] at @s run scoreboard players operation @s ttid = ttsys ttid
execute as @r[scores={ttid=..0}] at @s run scoreboard players add ttsys ttid 1