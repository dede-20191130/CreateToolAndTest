Attribute VB_Name = "M_Common"
'@Folder("Database")
Option Compare Database
Option Explicit

'**************************************
'*��ʊ֐����W���[��
'**************************************


'�萔

'�ϐ�




'******************************************************************************************
'*�֐���    �FinitializeTool
'*�@�\      �F
'*����(1)   �F
'*�߂�l    �FTrue > ����I���AFalse > �ُ�I��
'******************************************************************************************
Public Function initializeTool() As Boolean
    
    '�萔
    Const FUNC_NAME As String = "initializeTool"
    
    '�ϐ�
    
    On Error GoTo ErrorHandler

    initializeTool = False
    
    '�O���[�o���ϐ��̐ݒ�
    Set gObjDB = New clsDB
    Set gObjManageSettingForm = New clsManageSettingForm
    Set gObjManageRegiOrEditForm = New clsManageRegiOrEditForm
    

    initializeTool = True
    
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

