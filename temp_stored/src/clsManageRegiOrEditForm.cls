VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "clsManageRegiOrEditForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'@Folder("Class")
Option Compare Database
Option Explicit

'**************************
'*登録or編集Form管理クラス
'**************************

'定数
Private Const REGISTER As String = "登録"
Private Const EDIT As String = "編集"
Private Const MESSAGE_EXIST_BLANK As String = "入力欄に空欄が存在します。"

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
    
    myDicFunctions.Add "getInfo_consumptionTax_register", True
    myDicFunctions.Add "getInfo_consumptionTax_edit", True
    myDicFunctions.Add "getPreviousFormData_consumptionTax_edit", True
    myDicFunctions.Add "getInfo_numUnit_register", True
    myDicFunctions.Add "getInfo_numUnit_edit", True
    myDicFunctions.Add "getPreviousFormData_numUnit_edit", True
    myDicFunctions.Add "btn_execute_Click_consumptionTax_register", True
    myDicFunctions.Add "btn_execute_Click_consumptionTax_edit", True
    myDicFunctions.Add "btn_execute_Click_numUnit_register", True
    myDicFunctions.Add "btn_execute_Click_numUnit_edit", True

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
'*関数名    ：getInfo_consumptionTax_register
'*機能      ：フォームの情報を取得する 消費税率　登録
'*引数(1)   ：情報格納Dic
'*戻り値    ：True > 正常終了、False > 異常終了
'******************************************************************************************
Public Function getInfo_consumptionTax_register(ByRef pDicInfo As Object) As Boolean
    
    '定数
    Const FUNC_NAME As String = "getInfo_consumptionTax_register"
    
    '変数
    
    On Error GoTo ErrorHandler

    getInfo_consumptionTax_register = False
    
    'タイトル
    pDicInfo.Add "formTitle", "消費税率登録"
    'サブフォーム
    pDicInfo.Add "subFormSourceObject", FormName_04_SUB01
    '説明ラベルテキスト
    pDicInfo.Add "announceLblText", "消費税率を数値で入力してください。"
    '実行ボタンタイトル
    pDicInfo.Add "executeBtnTitle", REGISTER

    getInfo_consumptionTax_register = True
    
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
'*関数名    ：getInfo_consumptionTax_edit
'*機能      ：フォームの情報を取得する 消費税率 編集
'*引数(1)   ：情報格納Dic
'*戻り値    ：True > 正常終了、False > 異常終了
'******************************************************************************************
Public Function getInfo_consumptionTax_edit(ByRef pDicInfo As Object) As Boolean
    
    '定数
    Const FUNC_NAME As String = "getInfo_consumptionTax_edit"
    
    '変数
    
    On Error GoTo ErrorHandler

    getInfo_consumptionTax_edit = False
    
    'タイトル
    pDicInfo.Add "formTitle", "消費税率編集"
    'サブフォーム
    pDicInfo.Add "subFormSourceObject", FormName_04_SUB01
    '説明ラベルテキスト
    pDicInfo.Add "announceLblText", "消費税率を数値で編集してください。"
    '実行ボタンタイトル
    pDicInfo.Add "executeBtnTitle", EDIT

    getInfo_consumptionTax_edit = True
    
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
'*関数名    ：getPreviousFormData_consumptionTax_edit
'*機能      ：直近の画面の情報を取得する 消費税率　編集
'*引数(1)   ：情報格納Dic
'*戻り値    ：True > 正常終了、False > 異常終了
'******************************************************************************************
Public Function getPreviousFormData_consumptionTax_edit(ByRef currentID As Long) As Boolean
    
    '定数
    Const FUNC_NAME As String = "getInfo_consumptionTax_edit"
    
    '変数
    
    On Error GoTo ErrorHandler

    getPreviousFormData_consumptionTax_edit = False
    
    'ID
    currentID = Form_F03_設定.subF_Datasheet.Form.txt_ID.VALUE
    '消費税
    Form_F04_登録_編集_SUB01_基礎データ_消費税率.txt_consumpVal.VALUE = Form_F03_設定.subF_Datasheet.Form.txt_value.VALUE

    getPreviousFormData_consumptionTax_edit = True
    
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
'*関数名    ：getInfo_numUnit_register
'*機能      ：フォームの情報を取得する 数量単位 登録
'*引数(1)   ：情報格納Dic
'*戻り値    ：True > 正常終了、False > 異常終了
'******************************************************************************************
Public Function getInfo_numUnit_register(ByRef pDicInfo As Object) As Boolean
    
    '定数
    Const FUNC_NAME As String = "getInfo_numUnit_register"
    
    '変数
    
    On Error GoTo ErrorHandler

    getInfo_numUnit_register = False
    
    'タイトル
    pDicInfo.Add "formTitle", "数量単位登録"
    'サブフォーム
    pDicInfo.Add "subFormSourceObject", FormName_04_SUB02
    '説明ラベルテキスト
    pDicInfo.Add "announceLblText", "追加したい数量単位を入力してください。"
    '実行ボタンタイトル
    pDicInfo.Add "executeBtnTitle", REGISTER

    getInfo_numUnit_register = True
    
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
'*関数名    ：getInfo_numUnit_edit
'*機能      ：フォームの情報を取得する 数量単位　編集
'*引数(1)   ：情報格納Dic
'*戻り値    ：True > 正常終了、False > 異常終了
'******************************************************************************************
Public Function getInfo_numUnit_edit(ByRef pDicInfo As Object) As Boolean
    
    '定数
    Const FUNC_NAME As String = "getInfo_numUnit_edit"
    
    '変数
    
    On Error GoTo ErrorHandler

    getInfo_numUnit_edit = False
    
    'タイトル
    pDicInfo.Add "formTitle", "数量単位編集"
    'サブフォーム
    pDicInfo.Add "subFormSourceObject", FormName_04_SUB02
    '説明ラベルテキスト
    pDicInfo.Add "announceLblText", "数量単位を編集してください。"
    '実行ボタンタイトル
    pDicInfo.Add "executeBtnTitle", EDIT

    getInfo_numUnit_edit = True
    
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
'*関数名    ：getPreviousFormData_numUnit_edit
'*機能      ：直近の画面の情報を取得する 数量単位　編集
'*引数(1)   ：情報格納Dic
'*戻り値    ：True > 正常終了、False > 異常終了
'******************************************************************************************
Public Function getPreviousFormData_numUnit_edit(ByRef currentID As Long) As Boolean
    
    '定数
    Const FUNC_NAME As String = "getPreviousFormData_numUnit_edit"
    
    '変数
    
    On Error GoTo ErrorHandler

    getPreviousFormData_numUnit_edit = False
    
    'ID
    currentID = Form_F03_設定.subF_Datasheet.Form.txt_ID.VALUE
    '単位
    Form_F04_登録_編集_SUB02_基礎データ_数量単位.txt_numUnit.VALUE = Form_F03_設定.subF_Datasheet.Form.txt_unit.VALUE

    getPreviousFormData_numUnit_edit = True
    
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
'*関数名    ：btn_execute_Click_consumptionTax_register
'*機能      ：登録処理　消費税率
'*引数(1)   ：cancel
'*戻り値    ：True > 正常終了、False > 異常終了
'******************************************************************************************
Public Function btn_execute_Click_consumptionTax_register(ByRef cancel As Boolean) As Boolean
    
    '定数
    Const FUNC_NAME As String = "btn_execute_Click_consumptionTax_register"
    
    '変数
    Dim isExistBlank As Boolean
    Dim isErrorOfType As Boolean
    Dim taxVal As Double
    Dim rs As DAO.Recordset
    
    On Error GoTo ErrorHandler

    btn_execute_Click_consumptionTax_register = False
    cancel = False
    
    '確認
    If Not Me.showConfirmation(REGISTER, cancel) Then GoTo ExitHandler
    If cancel Then: GoTo TruePoint
    
    
    With Form_F04_登録_編集_SUB01_基礎データ_消費税率
        '空欄チェック
        If Not checkWhetherControlsVacant(isExistBlank, .txt_consumpVal.VALUE) Then GoTo ExitHandler
        If isExistBlank Then Call MsgBox(MESSAGE_EXIST_BLANK, vbExclamation, MESSAGE_TITLE_WARNING): cancel = True: GoTo TruePoint
        
        '型チェック
        If Not checkType(.txt_consumpVal.VALUE, dbDouble, isErrorOfType) Then GoTo ExitHandler
        If isErrorOfType Then Call MsgBox(.txt_consumpVal.Tag & "には数値を入力してください。", vbExclamation, MESSAGE_TITLE_WARNING): cancel = True: GoTo TruePoint
        
        '値チェック
        If .txt_consumpVal.VALUE < 0 Or 1 < .txt_consumpVal.VALUE Then
            Call MsgBox(.txt_consumpVal.Tag & "には0～100の間の数値を入力してください。", vbExclamation, MESSAGE_TITLE_WARNING)
            cancel = True: GoTo TruePoint
        End If
        
        taxVal = .txt_consumpVal.VALUE
        
    End With
        
    'データの挿入
    Set rs = gObjDB.Database.OpenRecordset(TBL_M_BSC_TAX)
    With rs
        rs.AddNew
        rs.Fields("VALUE").VALUE = taxVal
        rs.Update
    End With
    
    Forms(Form_F04_登録_編集.gPreviousScreenName).Refresh

TruePoint:

    btn_execute_Click_consumptionTax_register = True
    
ExitHandler:
    
    If Not rs Is Nothing Then rs.Clone: Set rs = Nothing
    
    Exit Function
    
ErrorHandler:

    Call M_Message.showErrMessageUpdateRcd(err.Number, err.description)
        
    GoTo ExitHandler
        
End Function



'******************************************************************************************
'*関数名    ：btn_execute_Click_consumptionTax_edit
'*機能      ：登録処理　消費税率
'*引数(1)   ：cancel
'*戻り値    ：True > 正常終了、False > 異常終了
'******************************************************************************************
Public Function btn_execute_Click_consumptionTax_edit(ByRef cancel As Boolean) As Boolean
    
    '定数
    Const FUNC_NAME As String = "btn_execute_Click_consumptionTax_edit"
    
    '変数
    Dim isExistBlank As Boolean
    Dim isErrorOfType As Boolean
    Dim taxVal As Double
    Dim rs As DAO.Recordset
    
    On Error GoTo ErrorHandler

    btn_execute_Click_consumptionTax_edit = False
    cancel = False
    
    '確認
    If Not Me.showConfirmation(EDIT, cancel) Then GoTo ExitHandler
    If cancel Then: GoTo TruePoint
    
    
    With Form_F04_登録_編集_SUB01_基礎データ_消費税率
        '空欄チェック
        If Not checkWhetherControlsVacant(isExistBlank, .txt_consumpVal.VALUE) Then GoTo ExitHandler
        If isExistBlank Then Call MsgBox(MESSAGE_EXIST_BLANK, vbExclamation, MESSAGE_TITLE_WARNING): cancel = True: GoTo TruePoint
        
        '型チェック
        If Not checkType(.txt_consumpVal.VALUE, dbDouble, isErrorOfType) Then GoTo ExitHandler
        If isErrorOfType Then Call MsgBox(.txt_consumpVal.Tag & "には数値を入力してください。", vbExclamation, MESSAGE_TITLE_WARNING): cancel = True: btn_execute_Click_consumptionTax_edit = True: GoTo ExitHandler
        
        '値チェック
        If .txt_consumpVal.VALUE < 0 Or 1 < .txt_consumpVal.VALUE Then
            Call MsgBox(.txt_consumpVal.Tag & "には0～100の間の数値を入力してください。", vbExclamation, MESSAGE_TITLE_WARNING)
            cancel = True:  GoTo TruePoint
        End If
        
        taxVal = .txt_consumpVal.VALUE
        
    End With
        
    'データの更新
    Set rs = gObjDB.Database.OpenRecordset("SELECT * FROM" & myVBVacant & TBL_M_BSC_TAX & myVBVacant & "WHERE ID =" & myVBVacant & Form_F04_登録_編集.currentID)
    With rs
        If .EOF Then: GoTo TruePoint
        rs.EDIT
        rs.Fields("VALUE").VALUE = taxVal
        rs.Update
    End With
    
    Forms(Form_F04_登録_編集.gPreviousScreenName).Refresh

TruePoint:

    btn_execute_Click_consumptionTax_edit = True
    
ExitHandler:
    
    If Not rs Is Nothing Then rs.Clone: Set rs = Nothing
    
    Exit Function
    
ErrorHandler:
    
    Call M_Message.showErrMessageUpdateRcd(err.Number, err.description)
        
    GoTo ExitHandler
        
End Function




'******************************************************************************************
'*関数名    ：btn_execute_Click_numUnit_register
'*機能      ：登録処理　消費税率
'*引数(1)   ：cancel
'*戻り値    ：True > 正常終了、False > 異常終了
'******************************************************************************************
Public Function btn_execute_Click_numUnit_register(ByRef cancel As Boolean) As Boolean

    '定数
    Const FUNC_NAME As String = "btn_execute_Click_numUnit_register"

    '変数
    Dim isExistBlank As Boolean
    Dim isErrorOfType As Boolean
    Dim txtVal As String
    Dim rs As DAO.Recordset

    On Error GoTo ErrorHandler

    btn_execute_Click_numUnit_register = False
    cancel = False

    '確認
    If Not Me.showConfirmation(REGISTER, cancel) Then GoTo ExitHandler
    If cancel Then btn_execute_Click_numUnit_register = True: GoTo ExitHandler


    With Form_F04_登録_編集_SUB02_基礎データ_数量単位
        '空欄チェック
        If Not checkWhetherControlsVacant(isExistBlank, .txt_numUnit.VALUE) Then GoTo ExitHandler
        If isExistBlank Then Call MsgBox(MESSAGE_EXIST_BLANK, vbExclamation, MESSAGE_TITLE_WARNING): cancel = True: btn_execute_Click_numUnit_register = True: GoTo ExitHandler

        '型チェック
        If Not checkType(.txt_numUnit.VALUE, dbText, isErrorOfType) Then GoTo ExitHandler
        If isErrorOfType Then Call MsgBox(.txt_numUnit.Tag & "には255文字以下の文字列を入力してください。", vbExclamation, MESSAGE_TITLE_WARNING): cancel = True: btn_execute_Click_numUnit_register = True: GoTo ExitHandler

        '値チェック無し

        txtVal = .txt_numUnit.VALUE

    End With

    'データの挿入
    Set rs = gObjDB.Database.OpenRecordset(TBL_M_BSC_UNIT)
    With rs
        rs.AddNew
        rs.Fields("UNIT").VALUE = txtVal
        rs.Update
    End With

    Forms(Form_F04_登録_編集.gPreviousScreenName).Refresh

TruePoint:

    btn_execute_Click_numUnit_register = True

ExitHandler:

    If Not rs Is Nothing Then rs.Clone: Set rs = Nothing

    Exit Function

ErrorHandler:

    Call M_Message.showErrMessageUpdateRcd(err.Number, err.description)

    GoTo ExitHandler

End Function





'******************************************************************************************
'*関数名    ：btn_execute_Click_numUnit_edit
'*機能      ：登録処理　消費税率
'*引数(1)   ：cancel
'*戻り値    ：True > 正常終了、False > 異常終了
'******************************************************************************************
Public Function btn_execute_Click_numUnit_edit(ByRef cancel As Boolean) As Boolean

    '定数
    Const FUNC_NAME As String = "btn_execute_Click_numUnit_edit"

    '変数
    Dim isExistBlank As Boolean
    Dim isErrorOfType As Boolean
    Dim txtVal As String
    Dim rs As DAO.Recordset

    On Error GoTo ErrorHandler

    btn_execute_Click_numUnit_edit = False
    cancel = False

    '確認
    If Not Me.showConfirmation(REGISTER, cancel) Then GoTo ExitHandler
    If cancel Then: GoTo TruePoint


    With Form_F04_登録_編集_SUB02_基礎データ_数量単位
        '空欄チェック
        If Not checkWhetherControlsVacant(isExistBlank, .txt_numUnit.VALUE) Then GoTo ExitHandler
        If isExistBlank Then Call MsgBox(MESSAGE_EXIST_BLANK, vbExclamation, MESSAGE_TITLE_WARNING): cancel = True: GoTo TruePoint

        '型チェック
        If Not checkType(.txt_numUnit.VALUE, dbText, isErrorOfType) Then GoTo ExitHandler
        If isErrorOfType Then Call MsgBox(.txt_numUnit.Tag & "には255文字以下の文字列を入力してください。", vbExclamation, MESSAGE_TITLE_WARNING): cancel = True: GoTo TruePoint

        '値チェック無し

        txtVal = .txt_numUnit.VALUE

    End With

    'データの更新
    Set rs = gObjDB.Database.OpenRecordset("SELECT * FROM" & myVBVacant & TBL_M_BSC_UNIT & myVBVacant & "WHERE ID =" & myVBVacant & Form_F04_登録_編集.currentID)
    With rs
        If .EOF Then GoTo TruePoint
        rs.EDIT
        rs.Fields("UNIT").VALUE = txtVal
        rs.Update
    End With

    Forms(Form_F04_登録_編集.gPreviousScreenName).Refresh

TruePoint:

    btn_execute_Click_numUnit_edit = True

ExitHandler:

    If Not rs Is Nothing Then rs.Clone: Set rs = Nothing

    Exit Function

ErrorHandler:

    Call M_Message.showErrMessageUpdateRcd(err.Number, err.description)

    GoTo ExitHandler

End Function



'******************************************************************************************
'*関数名    ：showConfirmation
'*機能      ：確認メッセージ表示
'*引数(1)   ：cancel
'*戻り値    ：True > 正常終了、False > 異常終了
'******************************************************************************************
Public Function showConfirmation( _
    ByVal regiOrEdit As String, _
    ByRef cancel As Boolean _
) As Boolean
    
    '定数
    Const FUNC_NAME As String = "showConfirmation"
    
    '変数
    
    On Error GoTo ErrorHandler

    showConfirmation = False
    
    'はいを選択しない場合はキャンセル
    If MsgBox( _
        "上記内容で" & _
            regiOrEdit & _
            "を行います。" & _
            vbNewLine & _
            "よろしいですか。", _
        vbYesNo, _
        TOOL_NAME _
    ) <> vbYes Then
        cancel = True
    End If
        
    showConfirmation = True
    
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

