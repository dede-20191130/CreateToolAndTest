Param(
    [string]$sourceFilePath ,  # バックアップするファイルのパス
    [string]$destDirectoryName = 'Backup'   # バックアップ先のフォルダ名.デフォルトが設定されている.
    )

#第一引数がなければ警告表示
if ([string]::IsNullorEmpty($sourceFilePath))
{
    Write-Host "次の形式で引数を入力してください。`r`nmake_backup.sp1 [引数1：バックアップするファイルのパス][引数2（省略可）：バックアップ先のフォルダ名]"
    exit
}


#第一引数のファイル名が存在するかどうか調査する。
if (!(Test-Path -LiteralPath $sourceFilePath))
{
    Write-Host 'ファイル名が存在しません。'
    exit
}

#カレントディレクトリに第二引数のフォルダが存在しなければ作成する。
if (!(Test-Path  -LiteralPath ./$destDirectoryName))
{
    New-Item ./$destDirectoryName -ItemType Directory
}

#ファイルパスからファイル名取得
$sourceFileName = [System.IO.Path]::GetFileName($sourceFilePath) 

#年月日・時間・分・秒の取得
$today   = Get-Date -Format "yyyyMMdd_HHmmss_"

#コピー先のパスを作成
$destinationFilePath = './' + $destDirectoryName + '/' + $today + $sourceFileName

#コピー実行
Copy-Item -path $sourceFilePath -Destination $destinationFilePath

exit