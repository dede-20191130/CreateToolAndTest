VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "clsFormSettingSub"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'@Folder("Class")
Option Compare Database
Option Explicit

'**************************
'*�ݒ�t�H�[���T�u�t�H�[���C�x���g�Ǘ��N���X
'**************************

'�萔

'�ϐ�
Private WithEvents myForm As Access.Form
Attribute myForm.VB_VarHelpID = -1


'******************************************************************************************
'*getter/setter
'******************************************************************************************
Public Property Set Form(ByRef frm As Access.Form)
    Set myForm = frm
    myForm.OnCurrent = "[Event Procedure]"
End Property

#If CBool(DEBUG_MODE) Then
Public Property Get Form() As Access.Form
    Set Form = myForm
End Property
#End If



'******************************************************************************************
'*�֐���    �FmyForm_Current
'*�@�\      �F
'*����      �F
'******************************************************************************************
Private Sub myForm_Current()
    
    '�萔
    Const FUNC_NAME As String = "myForm_Current"
    
    '�ϐ�
    
    On Error GoTo ErrorHandler

    '���C���t�H�[���̑I���R���{�{�b�N�X�̒l��
    '�t�H�[���̌��݂�ID�Ɠ����ł���ΏI��
    If myForm.Parent.cmb_selectedRcd.VALUE = myForm.txt_ID.VALUE Then GoTo ExitHandler
    
    '���C���t�H�[���̑I���R���{�{�b�N�X�̒l��ID�Ɠ����ɂ���
    myForm.Parent.cmb_selectedRcd.VALUE = myForm.txt_ID.VALUE
    
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

