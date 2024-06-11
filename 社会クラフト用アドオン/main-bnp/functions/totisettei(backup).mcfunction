scoreboard objectives add money dummy をとポイント
execute as @a[tag=!d] at @s unless entity @e[tag=st,r=6] unless entity @e[tag=stno,r=6] run titleraw @s actionbar {"rawtext":[{"text":"公共 - をとP:"},{"score":{"name":"@s","objective":"money"}}]}
execute as @a[tag=!d] at @s if entity @e[tag=st,r=6] unless score @e[tag=st,r=6,c=1] ttid = @s ttid as @a if score @e[tag=st,c=1] ttid = @s ttid run titleraw @p actionbar {"rawtext":[{"text":"私有地-"},{"selector":"@s"},{"text":" - をとP:"},{"score":{"name":"@p","objective":"money"}}]}
execute as @a[tag=!d] at @s if entity @e[tag=st,r=6] if score @s ttid = @e[tag=st,r=6,c=1] ttid run titleraw @p actionbar {"rawtext":[{"text":"自用地-"},{"selector":"@s"},{"text":" - をとP:"},{"score":{"name":"@p","objective":"money"}}]}
execute as @a[tag=!d] at @s if entity @e[tag=stno,r=6] unless score @e[tag=stno,r=6,c=1] ttid = @s ttid as @a if score @e[tag=stno,c=1] ttid = @s ttid run titleraw @p actionbar {"rawtext":[{"text":"私有地-"},{"selector":"@s"},{"text":"(NoPvP) - をとP:"},{"score":{"name":"@p","objective":"money"}}]}
execute as @a[tag=!d] at @s if entity @e[tag=stno,r=6] if score @e[tag=stno,r=6,c=1] ttid = @s ttid run titleraw @s actionbar {"rawtext":[{"text":"自用地-"},{"selector":"@s"},{"text":"(NoPvP) - をとP:"},{"score":{"name":"@s","objective":"money"}}]}
execute as @e[tag=st] at @s run tp ^ ^ ^
execute as @e[tag=stno] at @s run tp ^ ^ ^
effect @e[tag=st] invisibility 1 1 true
effect @e[tag=st] resistance 1 255 true
effect @e[tag=st] instant_health 1 255 true
effect @e[tag=stno] invisibility 1 1 true
effect @e[tag=stno] resistance 1 255 true
execute as @a[tag=!d,m=!adventure] at @s if entity @e[tag=stno,r=6] unless score @e[tag=stno,r=6,c=1] ttid = @s ttid unless entity @s[tag=op] run gamemode adventure
execute as @a[tag=!d,m=!survival] at @s unless entity @e[tag=st,r=6] unless entity @e[tag=stno,r=6] unless entity @s[tag=op] run gamemode survival
execute as @a[tag=!d] at @s if entity @e[tag=stno,r=6] unless score @e[tag=stno,r=6,c=1] ttid = @s ttid run effect @s weakness 1 255 true