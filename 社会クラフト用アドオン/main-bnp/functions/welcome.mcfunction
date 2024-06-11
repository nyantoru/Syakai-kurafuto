scoreboard objectives add V dummy
execute as @a at @s unless entity @s[scores={V=1..}] run scoreboard players set @s V 0
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"社会クラフトV1.1.26へようこそ!"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"V1.1.26アップデート内容"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"死にそうになるレベルで多いバグを修正"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"土地の範囲が5mから6mに増加"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"新アイテム「スタングレネード」追加"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"新アイテム「ジェットパック」追加"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"防具立てが破壊できるバグを修正出来んかったすまんかった"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"蘇生の範囲が1mから2mに増加"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"色々追加"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"名前がバグってるバグを修正"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"スポーンポイントの変更が試験的に可能に"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"土地の高さ制限を試験的に削除"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"土地の所有者がワールドにいない時スコアが表示されない問題を(多分)修正"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"スタングレネードが正常に使えないバグを修正"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"バッテリーの表示場所をアクションバーに変更"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"アクションバーが表示されない問題を修正"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"救急隊はスニークでダウン者の場所がわかるように変更"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"ジェットパックをチェストに装備して使うように変更"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"ジェットパックをオフハンドに装備して使うように変更"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"ストア修正"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"通報がやりやすくなりました"}]}
execute as @a[scores={V=!11126}] at @s run tellraw @s {"rawtext":[{"text":"新役職:警察追加"}]}
execute as @a[scores={V=!11126}] at @s run scoreboard players set @s V 11126
execute as @a[tag=!member] at @s run scoreboard players set @s money 300
execute as @a[tag=!member,scores={money=300}] at @s run tag @s add member