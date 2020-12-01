VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "clsManageSettingForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'@Folder("Class")
Option Compare Database
Option Explicit


'**************************
'*セッティングForm管理クラス
'**************************

'定数

'変数
Private myDicFunctions As Object


'******************************************************************************************
'*getter/setter
'******************************************************************************************
Public Property Get dicFunction() As Object
    Set dicFunction = myDicFunctions
End Property


'******************************************************************************************
'*関数名    ：Class_Initialize
'*機能      ：
'*引数(1)   ：
'******************************************************************************************
Private Sub Class_Initialize()
    
    '定数
    Const FUNC_NAME As String = "Class_Initialize"
    
    '変数
    
    On Error GoTo ErrorHandler
    
    '所有関数Dic
    Set myDicFunctions = CreateObject(SCRIPTING_DICTIONARY)
    
    myDicFunctions.Add "getInfo_consumptionTax", True
    myDicFunctions.Add "getInfo_numUnit", True

ExitHandler:

    Exit Sub
    
ErrorHandler:

    MsgBox "エラーが発生したため、マクロを終了します。" & _
           vbLf & _
           "関数名：" & FUNC_NAME & _
           vbLf & _
           "エラー番号：" & err.Number & vbNewLine & _
           err.description, vbCritical, TOOL_NAME
        
    GoTo ExitHandler
        
End Sub






'******************************************************************************************
'*関数名    ：getInfo_consumptionTax
'*機能      ：フォームの情報を取得する 消費税率
'*引数(1)   ：情報格納Dic
'*戻り値    ：True > 正常終了、False > 異常終了
'******************************************************************************************
Public Function getInfo_consumptionTax(ByRef pDicInfo As Object) As Boolean
    
    '定数
    Const FUNC_NAME As String = "getInfo_consumptionTax"
    
    '変数
    
    On Error GoTo ErrorHandler

    getInfo_consumptionTax = False
    
    'タイトル
    pDicInfo.Add "formTitle", "消費税率設定"
    'サブフォーム
    pDicInfo.Add "subFormSourceObject", FormName_03_SUB01
    'cmb_selectedRcdのRowSource
    pDicInfo.Add "rowSourceOfCmbSelectedRcd", "SELECT ID FROM" & myVBVacant & TBL_M_BSC_TAX & myVBVacant & "ORDER BY ID;"
    'フォームデータ構造体
    pDicInfo.Add "IDFirldName", "ID"
    pDicInfo.Add "subFormRcdSourceObj", TBL_M_BSC_TAX

    getInfo_consumptionTax = True
    
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




'******************************************************************************************
'*関数名    ：getInfo_numUnit
'*機能      ：フォームの情報を取得する　数量単位
'*引数(1)   ：情報格納Dic
'*戻り値    ：True > 正常終了、False > 異常終了
'******************************************************************************************
Public Function getInfo_numUnit(ByRef pDicInfo As Object) As Boolean
    
    '定数
    Const FUNC_NAME As String = "getInfo_numUnit"
    
    '変数
    
    On Error GoTo ErrorHandler

    getInfo_numUnit = False
    
    'タイトル
    pDicInfo.Add "formTitle", "数量単位設定"
    'サブフォーム
    pDicInfo.Add "subFormSourceObject", FormName_03_SUB02
    'cmb_selectedRcdのRowSource
    pDicInfo.Add "rowSourceOfCmbSelectedRcd", "SELECT ID FROM" & myVBVacant & TBL_M_BSC_UNIT & myVBVacant & "ORDER BY ID;"
    'フォームデータ構造体
    pDicInfo.Add "IDFirldName", "ID"
    pDicInfo.Add "subFormRcdSourceObj", TBL_M_BSC_UNIT

    getInfo_numUnit = True
    
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






'******************************************************************************************
'*関数名    ：deleteCurrentRcd
'*機能      ：
'*引数      ：
'*戻り値    ：True > 正常終了、False > 異常終了
'******************************************************************************************
Public Function deleteCurrentRcd() As Boolean
    
    '定数
    Const FUNC_NAME As String = "deleteCurrentRcd"
    
    '変数
    Dim currentID As Long
    Dim rs As DAO.Recordset
    
    On Error GoTo ErrorHandler

    deleteCurrentRcd = False
    
    'レコードの存在
    If (Form_F03_設定.subF_Datasheet.Form.Recordset.BOF And Form_F03_設定.subF_Datasheet.Form.Recordset.EOF) Or Form_F03_設定.subF_Datasheet.Form.Recordset.RecordCount = 0 Then
        MsgBox "レコードが存在しません。", vbCritical, MESSAGE_TITLE_WARNING
        GoTo TruePoint
    End If
    
    currentID = Form_F03_設定.subF_Datasheet.Form.txt_ID.VALUE
    
    '確認
    If MsgBox("ID:" & currentID & "のレコードを消去します。" & vbNewLine & "よろしいですか。", vbYesNo, TOOL_NAME) <> vbYes Then GoTo ExitHandler
    
    '削除
    Set rs = gObjDB.Database.OpenRecordset( _
        "SELECT * FROM" & _
        myVBVacant & _
        Form_F03_設定.gSubFormRcdSourceObj & _
        myVBVacant & _
        "WHERE" & _
        myVBVacant & _
        Form_F03_設定.gIDFieldName & _
        myVBVacant & _
        "=" & _
        myVBVacant & _
        currentID & _
        ";" _
        )
    With rs
        .Delete
    End With
    
    
    Form_F03_設定.Refresh
 
TruePoint:

    deleteCurrentRcd = True
    
ExitHandler:
    
    If Not rs Is Nothing Then rs.Clone: Set rs = Nothing
    
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


