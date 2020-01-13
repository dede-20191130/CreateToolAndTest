Param($selectedPath = ".")

try
{

    $selectedAbsPath = (Resolve-Path $selectedPath).Path
    $currentDir = (Resolve-Path .).Path

    Write-Host $selectedAbsPath + 'に対してバッチ処理します。'

    cd $selectedAbsPath

    git add -N .

    git add .

    #現在時刻格納
    $foo = Get-Date -Format 'yyyyMMdd_HHmm'

    #前回のコミットに対する差分格納
    $bar = $( git diff HEAD --stat )

    #文字列として連結
    $foobar = $foo + '__' + $bar

    git commit . -m $foobar

    git push origin master

    Write-Host '正常終了'

}
catch [System.Exception]
{
    Write-Host "エラーが発生しました。"
    Write-Host "↓↓↓エラー詳細↓↓↓"
    $error[0] | Out-String | Write-Host
}

finally
{
    Write-Host "プログラムを終了します。"
    #元の階層に戻る
    cd $currentDir
}