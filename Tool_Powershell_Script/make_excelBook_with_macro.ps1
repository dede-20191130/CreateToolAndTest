Param(
    [string]$newBookName = 'newBook'   # 新しいマクロ有効ブック名.デフォルト：newBook
    )

try
   {
        #変数宣言
        $xlOpenXMLWorkbookMacroEnabled = 52 #COMオブジェクトの定数（混乱がないようにそれと同じ名前に）
        $isSucess = $False
        
        # Excelを操作する為の宣言
        $excel = New-Object -ComObject Excel.Application

        # 可視化しない（画面が出たり消えたりするとめんどくさい）
        $excel.Visible = $False

        #新規エクセルブックを作成する。
        $newBook = $excel.Workbooks.Add()

        # マクロ有効エクセルブックとして保存
        #作成場所はカレントディレクトリ
        $newBook.SaveAs( (Convert-Path .) + "\" + $newBookName + ".xlsm", `
                            $xlOpenXMLWorkbookMacroEnabled)

        #正常終了フラグ取得：SAVEASが正常終了していること
        $isSucess = $?

   }
   catch [Exception]
   {
       Write-Host "エラーが発生しました。"
       Write-Host "↓↓↓エラー詳細↓↓↓"
       $error[0] | Out-String | Write-Host
   }
   finally
   {
       Write-Host "プログラムを終了します..."
        # Excelを閉じる
        if ($excel -ne $null)
        {
            $excel.Quit()

            # プロセスを解放する
            if ($newBook -ne $null)
            {
                Remove-Variable excel,newBook
            }else{
                Remove-Variable excel
            }
        }
        #正常終了ならばPowershellを停止する（Powershellのウィンドウを閉じる）
        if ($isSucess)
        {
           
            # 当スクリプトを実行したコンソールウィンドウのみ閉じる（PIDは実行中のPowerShellのプロセスIDが設定される自動変数）
            Stop-Process -Id $PID
        }
        

   }

