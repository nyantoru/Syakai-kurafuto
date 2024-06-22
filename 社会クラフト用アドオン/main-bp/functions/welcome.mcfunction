scoreboard objectives add V dummy
execute as @a at @s unless entity @s[scores={V=1..}] run scoreboard players set @s V 0
execute as @a[scores={V=!1136}] at @s run tellraw @s {"rawtext":[{"text":"社会クラフトV1.3.6へようこそ!"}]}
execute as @a[scores={V=!1136}] at @s run tellraw @s {"rawtext":[{"text":"V1.3.6アップデート内容"}]}
execute as @a[scores={V=!1136}] at @s run tellraw @s {"rawtext":[{"text":"試験的にメニューを追加"}]}
execute as @a[scores={V=!1136}] at @s run tellraw @s {"rawtext":[{"text":"工業機能ーを追加"}]}
execute as @a[scores={V=!1136}] at @s run tellraw @s {"rawtext":[{"text":"2item以上の燃料が消えるバグを修正"}]}
execute as @a[scores={V=!1136}] at @s run tellraw @s {"rawtext":[{"text":"レンチをオフハンドに持ってShiftでバッテリー残量が見えるように"}]}
execute as @a[scores={V=!1136}] at @s run scoreboard players set @s V 1136
execute as @a[tag=!member] at @s run scoreboard players set @s money 300
execute as @a[tag=!member,scores={money=300}] at @s run tag @s add member