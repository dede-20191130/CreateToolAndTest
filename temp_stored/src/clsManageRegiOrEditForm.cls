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
'*�o�^or�ҏWForm�Ǘ��N���X
'**************************

'�萔
Private Const REGISTER As String = "�o�^"
Private Const EDIT As String = "�ҏW"
Private Const MESSAGE_EXIST_BLANK As String = "���͗��ɋ󗓂����݂��܂��B"

'�ϐ�
Private myDicFunctions As Object


'******************************************************************************************
'*getter/setter
'******************************************************************************************
Public Property Get dicFunction() As Object
    Set dicFunction = myDicFunctions
End Property


'******************************************************************************************
'*�֐���    �FClass_Initialize
'*�@�\      �F
'*����(1)   �F
'******************************************************************************************
Private Sub Class_Initialize()
    
    '�萔
    Const FUNC_NAME As String = "Class_Initialize"
    
    '�ϐ�
    
    On Error GoTo ErrorHandler
    
    '���L�֐�Dic
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

    MsgBox "�G���[�������������߁A�}�N�����I�����܂��B" & _
           vbLf & _
           "�֐����F" & FUNC_NAME & _
           vbLf & _
           "�G���[�ԍ��F" & err.Number & vbNewLine & _
           err.description, vbCritical, TOOL_NAME
        
    GoTo ExitHandler
        
End Sub





'******************************************************************************************
'*�֐���    �FgetInfo_consumptionTax_register
'*�@�\      �F�t�H�[���̏����擾���� ����ŗ��@�o�^
'*����(1)   �F���i�[Dic
'*�߂�l    �FTrue > ����I���AFalse > �ُ�I��
'******************************************************************************************
Public Function getInfo_consumptionTax_register(ByRef pDicInfo As Object) As Boolean
    
    '�萔
    Const FUNC_NAME As String = "getInfo_consumptionTax_register"
    
    '�ϐ�
    
    On Error GoTo ErrorHandler

    getInfo_consumptionTax_register = False
    
    '�^�C�g��
    pDicInfo.Add "formTitle", "����ŗ��o�^"
    '�T�u�t�H�[��
    pDicInfo.Add "subFormSourceObject", FormName_04_SUB01
    '�������x���e�L�X�g
    pDicInfo.Add "announceLblText", "����ŗ��𐔒l�œ��͂��Ă��������B"
    '���s�{�^���^�C�g��
    pDicInfo.Add "executeBtnTitle", REGISTER

    getInfo_consumptionTax_register = True
    
ExitHandler:

    Exit Function
    
ErrorHandler:

    MsgBox "�G���[�������������߁A�}�N�����I�����܂��B" & _
           vbLf & _
           "�֐����F" & FUNC_NAME & _
           vbLf & _
           "�G���[�ԍ��F" & err.Number & vbNewLine & _
           err.description, vbCritical, TOOL_NAME
        
    GoTo ExitHandler
        
End Function



'******************************************************************************************
'*�֐���    �FgetInfo_consumptionTax_edit
'*�@�\      �F�t�H�[���̏����擾���� ����ŗ� �ҏW
'*����(1)   �F���i�[Dic
'*�߂�l    �FTrue > ����I���AFalse > �ُ�I��
'******************************************************************************************
Public Function getInfo_consumptionTax_edit(ByRef pDicInfo As Object) As Boolean
    
    '�萔
    Const FUNC_NAME As String = "getInfo_consumptionTax_edit"
    
    '�ϐ�
    
    On Error GoTo ErrorHandler

    getInfo_consumptionTax_edit = False
    
    '�^�C�g��
    pDicInfo.Add "formTitle", "����ŗ��ҏW"
    '�T�u�t�H�[��
    pDicInfo.Add "subFormSourceObject", FormName_04_SUB01
    '�������x���e�L�X�g
    pDicInfo.Add "announceLblText", "����ŗ��𐔒l�ŕҏW���Ă��������B"
    '���s�{�^���^�C�g��
    pDicInfo.Add "executeBtnTitle", EDIT

    getInfo_consumptionTax_edit = True
    
ExitHandler:

    Exit Function
    
ErrorHandler:

    MsgBox "�G���[�������������߁A�}�N�����I�����܂��B" & _
           vbLf & _
           "�֐����F" & FUNC_NAME & _
           vbLf & _
           "�G���[�ԍ��F" & err.Number & vbNewLine & _
           err.description, vbCritical, TOOL_NAME
        
    GoTo ExitHandler
        
End Function




'******************************************************************************************
'*�֐���    �FgetPreviousFormData_consumptionTax_edit
'*�@�\      �F���߂̉�ʂ̏����擾���� ����ŗ��@�ҏW
'*����(1)   �F���i�[Dic
'*�߂�l    �FTrue > ����I���AFalse > �ُ�I��
'******************************************************************************************
Public Function getPreviousFormData_consumptionTax_edit(ByRef currentID As Long) As Boolean
    
    '�萔
    Const FUNC_NAME As String = "getInfo_consumptionTax_edit"
    
    '�ϐ�
    
    On Error GoTo ErrorHandler

    getPreviousFormData_consumptionTax_edit = False
    
    'ID
    currentID = Form_F03_�ݒ�.subF_Datasheet.Form.txt_ID.VALUE
    '�����
    Form_F04_�o�^_�ҏW_SUB01_��b�f�[�^_����ŗ�.txt_consumpVal.VALUE = Form_F03_�ݒ�.subF_Datasheet.Form.txt_value.VALUE

    getPreviousFormData_consumptionTax_edit = True
    
ExitHandler:

    Exit Function
    
ErrorHandler:

    MsgBox "�G���[�������������߁A�}�N�����I�����܂��B" & _
           vbLf & _
           "�֐����F" & FUNC_NAME & _
           vbLf & _
           "�G���[�ԍ��F" & err.Number & vbNewLine & _
           err.description, vbCritical, TOOL_NAME
        
    GoTo ExitHandler
        
End Function



'******************************************************************************************
'*�֐���    �FgetInfo_numUnit_register
'*�@�\      �F�t�H�[���̏����擾���� ���ʒP�� �o�^
'*����(1)   �F���i�[Dic
'*�߂�l    �FTrue > ����I���AFalse > �ُ�I��
'******************************************************************************************
Public Function getInfo_numUnit_register(ByRef pDicInfo As Object) As Boolean
    
    '�萔
    Const FUNC_NAME As String = "getInfo_numUnit_register"
    
    '�ϐ�
    
    On Error GoTo ErrorHandler

    getInfo_numUnit_register = False
    
    '�^�C�g��
    pDicInfo.Add "formTitle", "���ʒP�ʓo�^"
    '�T�u�t�H�[��
    pDicInfo.Add "subFormSourceObject", FormName_04_SUB02
    '�������x���e�L�X�g
    pDicInfo.Add "announceLblText", "�ǉ����������ʒP�ʂ���͂��Ă��������B"
    '���s�{�^���^�C�g��
    pDicInfo.Add "executeBtnTitle", REGISTER

    getInfo_numUnit_register = True
    
ExitHandler:

    Exit Function
    
ErrorHandler:

    MsgBox "�G���[�������������߁A�}�N�����I�����܂��B" & _
           vbLf & _
           "�֐����F" & FUNC_NAME & _
           vbLf & _
           "�G���[�ԍ��F" & err.Number & vbNewLine & _
           err.description, vbCritical, TOOL_NAME
        
    GoTo ExitHandler
        
End Function



'******************************************************************************************
'*�֐���    �FgetInfo_numUnit_edit
'*�@�\      �F�t�H�[���̏����擾���� ���ʒP�ʁ@�ҏW
'*����(1)   �F���i�[Dic
'*�߂�l    �FTrue > ����I���AFalse > �ُ�I��
'******************************************************************************************
Public Function getInfo_numUnit_edit(ByRef pDicInfo As Object) As Boolean
    
    '�萔
    Const FUNC_NAME As String = "getInfo_numUnit_edit"
    
    '�ϐ�
    
    On Error GoTo ErrorHandler

    getInfo_numUnit_edit = False
    
    '�^�C�g��
    pDicInfo.Add "formTitle", "���ʒP�ʕҏW"
    '�T�u�t�H�[��
    pDicInfo.Add "subFormSourceObject", FormName_04_SUB02
    '�������x���e�L�X�g
    pDicInfo.Add "announceLblText", "���ʒP�ʂ�ҏW���Ă��������B"
    '���s�{�^���^�C�g��
    pDicInfo.Add "executeBtnTitle", EDIT

    getInfo_numUnit_edit = True
    
ExitHandler:

    Exit Function
    
ErrorHandler:

    MsgBox "�G���[�������������߁A�}�N�����I�����܂��B" & _
           vbLf & _
           "�֐����F" & FUNC_NAME & _
           vbLf & _
           "�G���[�ԍ��F" & err.Number & vbNewLine & _
           err.description, vbCritical, TOOL_NAME
        
    GoTo ExitHandler
        
End Function



'******************************************************************************************
'*�֐���    �FgetPreviousFormData_numUnit_edit
'*�@�\      �F���߂̉�ʂ̏����擾���� ���ʒP�ʁ@�ҏW
'*����(1)   �F���i�[Dic
'*�߂�l    �FTrue > ����I���AFalse > �ُ�I��
'******************************************************************************************
Public Function getPreviousFormData_numUnit_edit(ByRef currentID As Long) As Boolean
    
    '�萔
    Const FUNC_NAME As String = "getPreviousFormData_numUnit_edit"
    
    '�ϐ�
    
    On Error GoTo ErrorHandler

    getPreviousFormData_numUnit_edit = False
    
    'ID
    currentID = Form_F03_�ݒ�.subF_Datasheet.Form.txt_ID.VALUE
    '�P��
    Form_F04_�o�^_�ҏW_SUB02_��b�f�[�^_���ʒP��.txt_numUnit.VALUE = Form_F03_�ݒ�.subF_Datasheet.Form.txt_unit.VALUE

    getPreviousFormData_numUnit_edit = True
    
ExitHandler:

    Exit Function
    
ErrorHandler:

    MsgBox "�G���[�������������߁A�}�N�����I�����܂��B" & _
           vbLf & _
           "�֐����F" & FUNC_NAME & _
           vbLf & _
           "�G���[�ԍ��F" & err.Number & vbNewLine & _
           err.description, vbCritical, TOOL_NAME
        
    GoTo ExitHandler
        
End Function



'******************************************************************************************
'*�֐���    �Fbtn_execute_Click_consumptionTax_register
'*�@�\      �F�o�^�����@����ŗ�
'*����(1)   �Fcancel
'*�߂�l    �FTrue > ����I���AFalse > �ُ�I��
'******************************************************************************************
Public Function btn_execute_Click_consumptionTax_register(ByRef cancel As Boolean) As Boolean
    
    '�萔
    Const FUNC_NAME As String = "btn_execute_Click_consumptionTax_register"
    
    '�ϐ�
    Dim isExistBlank As Boolean
    Dim isErrorOfType As Boolean
    Dim taxVal As Double
    Dim rs As DAO.Recordset
    
    On Error GoTo ErrorHandler

    btn_execute_Click_consumptionTax_register = False
    cancel = False
    
    '�m�F
    If Not Me.showConfirmation(REGISTER, cancel) Then GoTo ExitHandler
    If cancel Then: GoTo TruePoint
    
    
    With Form_F04_�o�^_�ҏW_SUB01_��b�f�[�^_����ŗ�
        '�󗓃`�F�b�N
        If Not checkWhetherControlsVacant(isExistBlank, .txt_consumpVal.VALUE) Then GoTo ExitHandler
        If isExistBlank Then Call MsgBox(MESSAGE_EXIST_BLANK, vbExclamation, MESSAGE_TITLE_WARNING): cancel = True: GoTo TruePoint
        
        '�^�`�F�b�N
        If Not checkType(.txt_consumpVal.VALUE, dbDouble, isErrorOfType) Then GoTo ExitHandler
        If isErrorOfType Then Call MsgBox(.txt_consumpVal.Tag & "�ɂ͐��l����͂��Ă��������B", vbExclamation, MESSAGE_TITLE_WARNING): cancel = True: GoTo TruePoint
        
        '�l�`�F�b�N
        If .txt_consumpVal.VALUE < 0 Or 1 < .txt_consumpVal.VALUE Then
            Call MsgBox(.txt_consumpVal.Tag & "�ɂ�0�`100�̊Ԃ̐��l����͂��Ă��������B", vbExclamation, MESSAGE_TITLE_WARNING)
            cancel = True: GoTo TruePoint
        End If
        
        taxVal = .txt_consumpVal.VALUE
        
    End With
        
    '�f�[�^�̑}��
    Set rs = gObjDB.Database.OpenRecordset(TBL_M_BSC_TAX)
    With rs
        rs.AddNew
        rs.Fields("VALUE").VALUE = taxVal
        rs.Update
    End With
    
    Forms(Form_F04_�o�^_�ҏW.gPreviousScreenName).Refresh

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
'*�֐���    �Fbtn_execute_Click_consumptionTax_edit
'*�@�\      �F�o�^�����@����ŗ�
'*����(1)   �Fcancel
'*�߂�l    �FTrue > ����I���AFalse > �ُ�I��
'******************************************************************************************
Public Function btn_execute_Click_consumptionTax_edit(ByRef cancel As Boolean) As Boolean
    
    '�萔
    Const FUNC_NAME As String = "btn_execute_Click_consumptionTax_edit"
    
    '�ϐ�
    Dim isExistBlank As Boolean
    Dim isErrorOfType As Boolean
    Dim taxVal As Double
    Dim rs As DAO.Recordset
    
    On Error GoTo ErrorHandler

    btn_execute_Click_consumptionTax_edit = False
    cancel = False
    
    '�m�F
    If Not Me.showConfirmation(EDIT, cancel) Then GoTo ExitHandler
    If cancel Then: GoTo TruePoint
    
    
    With Form_F04_�o�^_�ҏW_SUB01_��b�f�[�^_����ŗ�
        '�󗓃`�F�b�N
        If Not checkWhetherControlsVacant(isExistBlank, .txt_consumpVal.VALUE) Then GoTo ExitHandler
        If isExistBlank Then Call MsgBox(MESSAGE_EXIST_BLANK, vbExclamation, MESSAGE_TITLE_WARNING): cancel = True: GoTo TruePoint
        
        '�^�`�F�b�N
        If Not checkType(.txt_consumpVal.VALUE, dbDouble, isErrorOfType) Then GoTo ExitHandler
        If isErrorOfType Then Call MsgBox(.txt_consumpVal.Tag & "�ɂ͐��l����͂��Ă��������B", vbExclamation, MESSAGE_TITLE_WARNING): cancel = True: btn_execute_Click_consumptionTax_edit = True: GoTo ExitHandler
        
        '�l�`�F�b�N
        If .txt_consumpVal.VALUE < 0 Or 1 < .txt_consumpVal.VALUE Then
            Call MsgBox(.txt_consumpVal.Tag & "�ɂ�0�`100�̊Ԃ̐��l����͂��Ă��������B", vbExclamation, MESSAGE_TITLE_WARNING)
            cancel = True:  GoTo TruePoint
        End If
        
        taxVal = .txt_consumpVal.VALUE
        
    End With
        
    '�f�[�^�̍X�V
    Set rs = gObjDB.Database.OpenRecordset("SELECT * FROM" & myVBVacant & TBL_M_BSC_TAX & myVBVacant & "WHERE ID =" & myVBVacant & Form_F04_�o�^_�ҏW.currentID)
    With rs
        If .EOF Then: GoTo TruePoint
        rs.EDIT
        rs.Fields("VALUE").VALUE = taxVal
        rs.Update
    End With
    
    Forms(Form_F04_�o�^_�ҏW.gPreviousScreenName).Refresh

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
'*�֐���    �Fbtn_execute_Click_numUnit_register
'*�@�\      �F�o�^�����@����ŗ�
'*����(1)   �Fcancel
'*�߂�l    �FTrue > ����I���AFalse > �ُ�I��
'******************************************************************************************
Public Function btn_execute_Click_numUnit_register(ByRef cancel As Boolean) As Boolean

    '�萔
    Const FUNC_NAME As String = "btn_execute_Click_numUnit_register"

    '�ϐ�
    Dim isExistBlank As Boolean
    Dim isErrorOfType As Boolean
    Dim txtVal As String
    Dim rs As DAO.Recordset

    On Error GoTo ErrorHandler

    btn_execute_Click_numUnit_register = False
    cancel = False

    '�m�F
    If Not Me.showConfirmation(REGISTER, cancel) Then GoTo ExitHandler
    If cancel Then btn_execute_Click_numUnit_register = True: GoTo ExitHandler


    With Form_F04_�o�^_�ҏW_SUB02_��b�f�[�^_���ʒP��
        '�󗓃`�F�b�N
        If Not checkWhetherControlsVacant(isExistBlank, .txt_numUnit.VALUE) Then GoTo ExitHandler
        If isExistBlank Then Call MsgBox(MESSAGE_EXIST_BLANK, vbExclamation, MESSAGE_TITLE_WARNING): cancel = True: btn_execute_Click_numUnit_register = True: GoTo ExitHandler

        '�^�`�F�b�N
        If Not checkType(.txt_numUnit.VALUE, dbText, isErrorOfType) Then GoTo ExitHandler
        If isErrorOfType Then Call MsgBox(.txt_numUnit.Tag & "�ɂ�255�����ȉ��̕��������͂��Ă��������B", vbExclamation, MESSAGE_TITLE_WARNING): cancel = True: btn_execute_Click_numUnit_register = True: GoTo ExitHandler

        '�l�`�F�b�N����

        txtVal = .txt_numUnit.VALUE

    End With

    '�f�[�^�̑}��
    Set rs = gObjDB.Database.OpenRecordset(TBL_M_BSC_UNIT)
    With rs
        rs.AddNew
        rs.Fields("UNIT").VALUE = txtVal
        rs.Update
    End With

    Forms(Form_F04_�o�^_�ҏW.gPreviousScreenName).Refresh

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
'*�֐���    �Fbtn_execute_Click_numUnit_edit
'*�@�\      �F�o�^�����@����ŗ�
'*����(1)   �Fcancel
'*�߂�l    �FTrue > ����I���AFalse > �ُ�I��
'******************************************************************************************
Public Function btn_execute_Click_numUnit_edit(ByRef cancel As Boolean) As Boolean

    '�萔
    Const FUNC_NAME As String = "btn_execute_Click_numUnit_edit"

    '�ϐ�
    Dim isExistBlank As Boolean
    Dim isErrorOfType As Boolean
    Dim txtVal As String
    Dim rs As DAO.Recordset

    On Error GoTo ErrorHandler

    btn_execute_Click_numUnit_edit = False
    cancel = False

    '�m�F
    If Not Me.showConfirmation(REGISTER, cancel) Then GoTo ExitHandler
    If cancel Then: GoTo TruePoint


    With Form_F04_�o�^_�ҏW_SUB02_��b�f�[�^_���ʒP��
        '�󗓃`�F�b�N
        If Not checkWhetherControlsVacant(isExistBlank, .txt_numUnit.VALUE) Then GoTo ExitHandler
        If isExistBlank Then Call MsgBox(MESSAGE_EXIST_BLANK, vbExclamation, MESSAGE_TITLE_WARNING): cancel = True: GoTo TruePoint

        '�^�`�F�b�N
        If Not checkType(.txt_numUnit.VALUE, dbText, isErrorOfType) Then GoTo ExitHandler
        If isErrorOfType Then Call MsgBox(.txt_numUnit.Tag & "�ɂ�255�����ȉ��̕��������͂��Ă��������B", vbExclamation, MESSAGE_TITLE_WARNING): cancel = True: GoTo TruePoint

        '�l�`�F�b�N����

        txtVal = .txt_numUnit.VALUE

    End With

    '�f�[�^�̍X�V
    Set rs = gObjDB.Database.OpenRecordset("SELECT * FROM" & myVBVacant & TBL_M_BSC_UNIT & myVBVacant & "WHERE ID =" & myVBVacant & Form_F04_�o�^_�ҏW.currentID)
    With rs
        If .EOF Then GoTo TruePoint
        rs.EDIT
        rs.Fields("UNIT").VALUE = txtVal
        rs.Update
    End With

    Forms(Form_F04_�o�^_�ҏW.gPreviousScreenName).Refresh

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
'*�֐���    �FshowConfirmation
'*�@�\      �F�m�F���b�Z�[�W�\��
'*����(1)   �Fcancel
'*�߂�l    �FTrue > ����I���AFalse > �ُ�I��
'******************************************************************************************
Public Function showConfirmation( _
    ByVal regiOrEdit As String, _
    ByRef cancel As Boolean _
) As Boolean
    
    '�萔
    Const FUNC_NAME As String = "showConfirmation"
    
    '�ϐ�
    
    On Error GoTo ErrorHandler

    showConfirmation = False
    
    '�͂���I�����Ȃ��ꍇ�̓L�����Z��
    If MsgBox( _
        "��L���e��" & _
            regiOrEdit & _
            "���s���܂��B" & _
            vbNewLine & _
            "��낵���ł����B", _
        vbYesNo, _
        TOOL_NAME _
    ) <> vbYes Then
        cancel = True
    End If
        
    showConfirmation = True
    
ExitHandler:

    Exit Function
    
ErrorHandler:

    MsgBox "�G���[�������������߁A�}�N�����I�����܂��B" & _
           vbLf & _
           "�֐����F" & FUNC_NAME & _
           vbLf & _
           "�G���[�ԍ��F" & err.Number & vbNewLine & _
           err.description, vbCritical, TOOL_NAME
        
    GoTo ExitHandler
        
End Function
