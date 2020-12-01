Attribute VB_Name = "M_Common"
'@Folder("Database")
Option Compare Database
Option Explicit

'**************************************
'*一般関数モジュール
'**************************************


'定数

'変数




'******************************************************************************************
'*関数名    ：initializeTool
'*機能      ：
'*引数(1)   ：
'*戻り値    ：True > 正常終了、False > 異常終了
'******************************************************************************************
Public Function initializeTool() As Boolean
    
    '定数
    Const FUNC_NAME As String = "initializeTool"
    
    '変数
    
    On Error GoTo ErrorHandler

    initializeTool = False
    
    'グローバル変数の設定
    Set gObjDB = New clsDB
    Set gObjManageSettingForm = New clsManageSettingForm
    Set gObjManageRegiOrEditForm = New clsManageRegiOrEditForm
    

    initializeTool = True
    
ExitHandler:

    Exit Function
    
ErrorHandler:

    MsgBox "エラーが発生したため、マクロを終了します。" & _
           vbLf & _
           "関数名：" & FUNC_NAME & _
           vbLf & _
           "エラー番号：" & err.Number & vbNewLine & _
           err.description, vbCritical, TOOL_NAME
        
    GoTo ExitHandler
        
End Function

