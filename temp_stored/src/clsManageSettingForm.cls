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
'*�Z�b�e�B���OForm�Ǘ��N���X
'**************************

'�萔

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
    
    myDicFunctions.Add "getInfo_consumptionTax", True
    myDicFunctions.Add "getInfo_numUnit", True

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
'*�֐���    �FgetInfo_consumptionTax
'*�@�\      �F�t�H�[���̏����擾���� ����ŗ�
'*����(1)   �F���i�[Dic
'*�߂�l    �FTrue > ����I���AFalse > �ُ�I��
'******************************************************************************************
Public Function getInfo_consumptionTax(ByRef pDicInfo As Object) As Boolean
    
    '�萔
    Const FUNC_NAME As String = "getInfo_consumptionTax"
    
    '�ϐ�
    
    On Error GoTo ErrorHandler

    getInfo_consumptionTax = False
    
    '�^�C�g��
    pDicInfo.Add "formTitle", "����ŗ��ݒ�"
    '�T�u�t�H�[��
    pDicInfo.Add "subFormSourceObject", FormName_03_SUB01
    'cmb_selectedRcd��RowSource
    pDicInfo.Add "rowSourceOfCmbSelectedRcd", "SELECT ID FROM" & myVBVacant & TBL_M_BSC_TAX & myVBVacant & "ORDER BY ID;"
    '�t�H�[���f�[�^�\����
    pDicInfo.Add "IDFirldName", "ID"
    pDicInfo.Add "subFormRcdSourceObj", TBL_M_BSC_TAX

    getInfo_consumptionTax = True
    
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
'*�֐���    �FgetInfo_numUnit
'*�@�\      �F�t�H�[���̏����擾����@���ʒP��
'*����(1)   �F���i�[Dic
'*�߂�l    �FTrue > ����I���AFalse > �ُ�I��
'******************************************************************************************
Public Function getInfo_numUnit(ByRef pDicInfo As Object) As Boolean
    
    '�萔
    Const FUNC_NAME As String = "getInfo_numUnit"
    
    '�ϐ�
    
    On Error GoTo ErrorHandler

    getInfo_numUnit = False
    
    '�^�C�g��
    pDicInfo.Add "formTitle", "���ʒP�ʐݒ�"
    '�T�u�t�H�[��
    pDicInfo.Add "subFormSourceObject", FormName_03_SUB02
    'cmb_selectedRcd��RowSource
    pDicInfo.Add "rowSourceOfCmbSelectedRcd", "SELECT ID FROM" & myVBVacant & TBL_M_BSC_UNIT & myVBVacant & "ORDER BY ID;"
    '�t�H�[���f�[�^�\����
    pDicInfo.Add "IDFirldName", "ID"
    pDicInfo.Add "subFormRcdSourceObj", TBL_M_BSC_UNIT

    getInfo_numUnit = True
    
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
'*�֐���    �FdeleteCurrentRcd
'*�@�\      �F
'*����      �F
'*�߂�l    �FTrue > ����I���AFalse > �ُ�I��
'******************************************************************************************
Public Function deleteCurrentRcd() As Boolean
    
    '�萔
    Const FUNC_NAME As String = "deleteCurrentRcd"
    
    '�ϐ�
    Dim currentID As Long
    Dim rs As DAO.Recordset
    
    On Error GoTo ErrorHandler

    deleteCurrentRcd = False
    
    '���R�[�h�̑���
    If (Form_F03_�ݒ�.subF_Datasheet.Form.Recordset.BOF And Form_F03_�ݒ�.subF_Datasheet.Form.Recordset.EOF) Or Form_F03_�ݒ�.subF_Datasheet.Form.Recordset.RecordCount = 0 Then
        MsgBox "���R�[�h�����݂��܂���B", vbCritical, MESSAGE_TITLE_WARNING
        GoTo TruePoint
    End If
    
    currentID = Form_F03_�ݒ�.subF_Datasheet.Form.txt_ID.VALUE
    
    '�m�F
    If MsgBox("ID:" & currentID & "�̃��R�[�h���������܂��B" & vbNewLine & "��낵���ł����B", vbYesNo, TOOL_NAME) <> vbYes Then GoTo ExitHandler
    
    '�폜
    Set rs = gObjDB.Database.OpenRecordset( _
        "SELECT * FROM" & _
        myVBVacant & _
        Form_F03_�ݒ�.gSubFormRcdSourceObj & _
        myVBVacant & _
        "WHERE" & _
        myVBVacant & _
        Form_F03_�ݒ�.gIDFieldName & _
        myVBVacant & _
        "=" & _
        myVBVacant & _
        currentID & _
        ";" _
        )
    With rs
        .Delete
    End With
    
    
    Form_F03_�ݒ�.Refresh
 
TruePoint:

    deleteCurrentRcd = True
    
ExitHandler:
    
    If Not rs Is Nothing Then rs.Clone: Set rs = Nothing
    
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

