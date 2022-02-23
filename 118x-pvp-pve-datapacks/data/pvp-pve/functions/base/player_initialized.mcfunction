#プレイヤー初期化コード
#ウェルカムメッセージ（既参加者）
execute as @a[tag=Initialized] at @s if score @s login_trigger matches 1.. run tellraw @s ["",{"selector":"@s","color":"green"},{"text":", Welcome to the Ho9tocraft's Player Vs Player/Enviroment Server!","color":"yellow"}]
#ウェルカムメッセージ（未参加者）
execute as @a[tag=!Initialized] at @s run tellraw @s ["",{"selector":"@s","color":"green"},{"text":", Welcome to the Ho9tocraft's Player Vs Player/Enviroment Server!\nPlease read ","color":"yellow"},{"text":"the server rules ","color":"red"},{"text":"carefully","bold":true,"color":"red"},{"text":" before joining the game.","color":"yellow"}]
#ログインプレイヤーのイニシャライザトリガーを削除
execute as @a[tag=Initialized] at @s if score @s login_trigger matches 1.. run tag @s remove Initialized
#ログインプレイヤーのログイントリガーを削除
execute as @a at @s if score @s login_trigger matches 1.. run scoreboard players set @s login_trigger 0
#アイテムのクリア
execute as @a[tag=!Initialized] at @s run clear @s
#エフェクトの更新
execute as @a[tag=!Initialized] at @s run effect clear @s
execute as @a[tag=!Initialized] at @s run effect give @s regeneration 1000000 9 true
execute as @a[tag=!Initialized] at @s run effect give @s health_boost 1000000 4 true
execute as @a[tag=!Initialized] at @s run effect give @s resistance 1000000 4 true
#スコアボードのイニシャライズ
#FP
execute as @a[tag=!Initialized] at @s run scoreboard players set @s FocusPoint 0
#HP群
execute as @a[tag=!Initialized] at @s run execute store result score @s health_blu run data get entity @s Health
execute as @a[tag=!Initialized] at @s run execute store result score @s health_red run data get entity @s Health
#スキルクールタイム群
execute as @a[tag=!Initialized] at @s run scoreboard players set @s skill1_ct 0
execute as @a[tag=!Initialized] at @s run scoreboard players set @s skill2_ct 0
execute as @a[tag=!Initialized] at @s run scoreboard players set @s skill3_ct 0
execute as @a[tag=!Initialized] at @s run scoreboard players set @s skill4_ct 0
execute as @a[tag=!Initialized] at @s run scoreboard players set @s ws_ct 0
#スキル使用可否群
execute as @a[tag=!Initialized] at @s run scoreboard players set @s skill1_available 1
execute as @a[tag=!Initialized] at @s run scoreboard players set @s skill2_available 1
execute as @a[tag=!Initialized] at @s run scoreboard players set @s skill3_available 1
execute as @a[tag=!Initialized] at @s run scoreboard players set @s skill4_available 1
execute as @a[tag=!Initialized] at @s run scoreboard players set @s ws_available 1
#勝利敗北回数：初期化コードに組み込むが、ログイン毎に初期化しない
execute as @a[tag=!Server_Initialized] at @s run scoreboard players set @s WinCount 0
execute as @a[tag=!Server_Initialized] at @s run scoreboard players set @s LoseCount 0
