VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "clsDB"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'@Folder("Class")
Option Compare Database
Option Explicit

'**************************
'*���g��DB�Ǘ��N���X
'**************************

'�萔

'�ϐ�
Private myWorkspace As DAO.Workspace
Private myDatabase As DAO.Database
Private isTransactionBegin As Boolean

'******************************************************************************************
'*getter/setter
'******************************************************************************************
Public Property Get Database() As DAO.Database
    Set Database = myDatabase
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
    
    Set myWorkspace = Application.DBEngine.Workspaces(0)
    Set myDatabase = myWorkspace.Databases(0)
    isTransactionBegin = False
    
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
'*�֐���    �FClass_Terminate
'*�@�\      �F
'*����(1)   �F
'******************************************************************************************
Private Sub Class_Terminate()
    
    '�萔
    Const FUNC_NAME As String = "Class_Terminate"
    
    '�ϐ�
    
    On Error GoTo ErrorHandler
    
    myDatabase.Close: Set myDatabase = Nothing
    myWorkspace.Close: Set myWorkspace = Nothing

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
'*�g�����U�N�V����
'******************************************************************************************
Public Sub beginTransaction()
    If isTransactionBegin Then Exit Sub
    myWorkspace.BeginTrans
    isTransactionBegin = True
End Sub

Public Sub CommitTransaction()
    If Not isTransactionBegin Then Exit Sub
    myWorkspace.CommitTrans
    isTransactionBegin = False
End Sub

Public Sub RollbackTransaction()
    If Not isTransactionBegin Then Exit Sub
    myWorkspace.Rollback
    isTransactionBegin = False
End Sub