VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "clsTxtListenerNumberBox"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'@Folder("Class")
Option Compare Database
Option Explicit

'**************************
'*���l���̓e�L�X�g�{�b�N�X�C�x���g�Ǘ��N���X
'**************************

'�萔

'�ϐ�
Private WithEvents myTextBox As Access.TextBox
Attribute myTextBox.VB_VarHelpID = -1

'******************************************************************************************
'*getter/setter
'******************************************************************************************
Public Property Set TextBox(ByRef cmb As Access.TextBox)
    Set myTextBox = cmb
    myTextBox.OnKeyPress = "[Event Procedure]"
End Property

#If CBool(DEBUG_MODE) Then
Public Property Get TextBox() As Access.TextBox
    Set TextBox = myTextBox
End Property
#End If


'******************************************************************************************
'*�֐���    �FmyTextBox_KeyPress
'*�@�\      �F���l�̂ݓ��͉\
'*����(1)   �F�A�X�L�[�R�[�h
'******************************************************************************************
Private Sub myTextBox_KeyPress(KeyAscii As Integer)
    
    '�萔
    Const FUNC_NAME As String = "myTextBox_KeyPress"
    
    '�ϐ�
    
    On Error GoTo ErrorHandler
    
    'KeyAscii������̒l�̂ݗL��
    'i. 0��9�̊�
    'ii.Backspace����уs���I�h
    If 47 < KeyAscii And KeyAscii < 58 Then GoTo ExitHandler
    If KeyAscii = 8 Then GoTo ExitHandler
    If KeyAscii = 46 Then GoTo ExitHandler
    
    KeyAscii = 0
    
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
