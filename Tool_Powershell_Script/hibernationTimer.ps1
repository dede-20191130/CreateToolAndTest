Param(
    [long]$waitTime = 300   # 待機時間（s）
    )

sleep $waitTime 
# 休止状態
shutdown -h

# 当スクリプトを実行したコンソールウィンドウのみ閉じる（PIDは実行中のPowerShellのプロセスIDが設定される自動変数）
Stop-Process -Id $PID
