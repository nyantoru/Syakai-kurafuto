# 救急隊/警察用マーカー表示
scoreboard players add @a[tag=kkt] time 1
scoreboard players add @a[tag=kist] time 1
execute as @a[scores={time=20},tag=shift,tag=kkt,tag=!d] at @s if entity @e[type=armor_stand,name=ping_kkt] anchored eyes facing entity @e[type=armor_stand,name=ping_kkt,c=1] feet run particle minecraft:endrod ^ ^ ^1
execute as @a[scores={time=20},tag=shift,tag=kist,tag=!d] at @s if entity @e[type=armor_stand,name=ping_kist] anchored eyes facing entity @e[type=armor_stand,name=ping_kist,c=1] feet run particle minecraft:endrod ^ ^ ^1
scoreboard players set @a[scores={time=21..}] time 0
# 木こり以外から斧を没収
clear @a[tag=!kkr] minecraft:iron_axe
clear @a[tag=!kkr] minecraft:stone_axe
clear @a[tag=!kkr] minecraft:golden_axe
clear @a[tag=!kkr] minecraft:wooden_axe
clear @a[tag=!kkr] minecraft:diamond_axe
clear @a[tag=!kkr] minecraft:netherite_axe
# 戦士以外から剣を没収
clear @a[tag=!sns] minecraft:iron_sword
clear @a[tag=!sns] minecraft:stone_sword
clear @a[tag=!sns] minecraft:golden_sword
clear @a[tag=!sns] minecraft:wooden_sword
clear @a[tag=!sns] minecraft:diamond_sword
clear @a[tag=!sns] minecraft:netherite_sword
# 釣り師以外から釣り竿を没収
clear @a[tag=!trs] minecraft:fishing_rod
# 農業以下略
clear @a[tag=!nugu] minecraft:iron_hoe
clear @a[tag=!nugu] minecraft:stone_hoe
clear @a[tag=!nugu] minecraft:golden_hoe
clear @a[tag=!nugu] minecraft:wooden_hoe
clear @a[tag=!nugu] minecraft:netherite_hoe
clear @a[tag=!nugu] minecraft:diamond_hoe
# 採掘以下略
clear @a[tag=!sikt] minecraft:iron_pickaxe
clear @a[tag=!sikt] minecraft:stone_pickaxe
clear @a[tag=!sikt] minecraft:golden_pickaxe
clear @a[tag=!sikt] minecraft:wooden_pickaxe
clear @a[tag=!sikt] minecraft:diamond_pickaxe
clear @a[tag=!sikt] minecraft:netherite_pickaxe