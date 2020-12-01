VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "clsCmbListener"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'@Folder("Class")
Option Compare Database
Option Explicit

'**************************
'*�R���{�{�b�N�X�C�x���g�Ǘ��N���X
'**************************

'�萔

'�ϐ�
Private WithEvents myComboBox As Access.ComboBox

'******************************************************************************************
'*getter/setter
'******************************************************************************************
Public Property Set ComboBox(ByRef cmb As Access.ComboBox)
    Set myComboBox = cmb
    myComboBox.OnKeyDown = "[Event Procedure]"
End Property

#If CBool(DEBUG_MODE) Then
Public Property Get ComboBox() As Access.ComboBox
    Set ComboBox = myComboBox
End Property
#End If



'******************************************************************************************
'*�֐���    �FmyComboBox_KeyDown
'*�@�\      �F�L�[���͂𖳌��ɂ���
'*����(1)   �F
'******************************************************************************************
Private Sub myComboBox_KeyDown(KeyCode As Integer, Shift As Integer)
    
    '�萔
    Const FUNC_NAME As String = "myComboBox_KeyDown"
    
    '�ϐ�
    
    On Error GoTo ErrorHandler
    
    
    '�L�[���͂𖳌��ɂ���(Enter/Tab/Esc�ȊO)
    If KeyCode = vbKeyReturn Then GoTo ExitHandler
    If KeyCode = vbKeyTab Then GoTo ExitHandler
    If KeyCode = vbKeyEscape Then GoTo ExitHandler
    
    KeyCode = 0
    
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




