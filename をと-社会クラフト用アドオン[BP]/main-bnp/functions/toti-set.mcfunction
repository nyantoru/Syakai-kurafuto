execute as @e[name="土地購入"] at @s unless entity @e[type=npc,r=1] run summon npc ttkunu
execute as @e[name="土地購入"] at @s run kill
execute as @e[type=npc,name=ttkunu,tag=!notalk] at @s run gamemode s @p
execute as @e[type=npc,name=ttkunu,tag=!notalk] at @s run dialogue open @s @p ttkunu