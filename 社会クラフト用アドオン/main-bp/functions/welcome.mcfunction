scoreboard objectives add V dummy
execute as @a at @s unless entity @s[scores={V=1..}] run scoreboard players set @s V 0
execute as @a[scores={V=!112428}] at @s run tellraw @s {"rawtext":[{"text":"社会クラフトV1.2.4-Betaへようこそ!"}]}
execute as @a[scores={V=!112428}] at @s run tellraw @s {"rawtext":[{"text":"V1.2.4-Betaアップデート内容"}]}
execute as @a[scores={V=!112428}] at @s run tellraw @s {"rawtext":[{"text":"試験的にメニューを追加"}]}
execute as @a[scores={V=!112428}] at @s run scoreboard players set @s V 112428
execute as @a[tag=!member] at @s run scoreboard players set @s money 300
execute as @a[tag=!member,scores={money=300}] at @s run tag @s add member