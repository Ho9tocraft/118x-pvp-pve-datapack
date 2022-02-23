#初期化コード
#ワールドインストール時に自動実行されます。

#ダミープレイヤー用コマンド
#Tick-秒コンバーター
scoreboard objectives add tick_sec_converter dummy
#準備時間
scoreboard objectives add timer_prepare dummy
#戦闘時間
scoreboard objectives add timer_battle dummy
#CorePvP用ライフゲージ
scoreboard objectives add Life_Red dummy
scoreboard objectives add Life_Blu dummy

#プレイヤー用コマンド
#ログイントリガー
scoreboard objectives add login_trigger minecraft.custom:minecraft.leave_game
#HP群
#HP（青表示）
scoreboard objectives add health_blu dummy
#HP（赤表示）
scoreboard objectives add health_red dummy
#スキルCT群
#スキル1
scoreboard objectives add skill1_ct dummy
#スキル2
scoreboard objectives add skill2_ct dummy
#スキル3
scoreboard objectives add skill3_ct dummy
#武器戦技
scoreboard objectives add ws_ct dummy
#リミットブレイク
scoreboard objectives add skill4_ct dummy
#FP
scoreboard objectives add FocusPoint dummy
#勝利回数
scoreboard objectives add WinCount dummy
#敗北回数
scoreboard objectives add LoseCount dummy
#スキル使用可否群
#スキル1
scoreboard objectives add skill1_available dummy
#スキル2
scoreboard objectives add skill2_available dummy
#スキル3
scoreboard objectives add skill3_available dummy
#リミットブレイク
scoreboard objectives add skill4_available dummy
#武器戦技
scoreboard objectives add ws_available dummy

#ダミープレイヤー用スコアボードの初期化
#Tick-秒 コンバーター：必ず0
scoreboard players set #Helper tick_sec_converter 0
#戦闘経過時間：必ず-1、戦闘時にカウントアップ開始
scoreboard players set #Helper timer_battle -1
#戦闘準備時間：必ず-1、試合開始時に60を代入、カウントダウン開始
scoreboard players set #Helper timer_prepare -1
#CorePvP用ライフ：必ず0、戦闘時に1000を代入、0になったらリスポーン不可
scoreboard players set #Helper Life_Blu 0
scoreboard players set #Helper Life_Red 0
