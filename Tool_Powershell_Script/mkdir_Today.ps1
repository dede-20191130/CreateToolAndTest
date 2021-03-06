﻿#現在日時を取得する（西暦＆月＆日の形式）
$date = Get-Date -Format "yyyyMMdd"

#カレントディレクトリに既に作成予定のフォルダが存在する場合は処理を終了
if (Test-Path .\$date) {
    Write-Host "フォルダが既に存在します"
    exit
}

mkdir .\$date

#powershellを停止する（Powershellのウィンドウを閉じる）
Stop-Process -Id $PID

exit