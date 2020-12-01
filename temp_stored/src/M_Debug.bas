Attribute VB_Name = "M_Debug"
'@Folder("Database")
Option Compare Database
Option Explicit

#If DEBUG_MODE Then

Sub s20200515_1137()

    Dim cnt As Variant
    
    For Each cnt In CurrentDb.TableDefs
        Debug.Print cnt.Name
    Next
    
    
End Sub


Sub s20200517_1939()
    Debug.Print CurrentData.AllTables(12).Name
End Sub


Private Sub AccessObjectTest20200517_1945()

    Dim obj As AccessObject

    'DataAccessPageを列挙
    Debug.Print "DataAccessPageを列挙"
    For Each obj In CurrentProject.AllDataAccessPages
        Debug.Print obj.Name
    Next

    'フォームを列挙
    Debug.Print "フォームを列挙"
    For Each obj In CurrentProject.AllForms
        Debug.Print obj.Name
    Next

    'マクロを列挙
    Debug.Print "マクロを列挙"
    For Each obj In CurrentProject.AllMacros
        Debug.Print obj.Name
    Next

    'モジュールを列挙
    Debug.Print "モジュールを列挙"
    For Each obj In CurrentProject.AllModules
        Debug.Print obj.Name
    Next

    'レポートを列挙
    Debug.Print "レポートを列挙"
    For Each obj In CurrentProject.AllReports
        Debug.Print obj.Name
    Next

    'テーブルの列挙
    Debug.Print "テーブルの列挙"
    For Each obj In CurrentData.AllTables
        Debug.Print obj.Name
    Next

    'クエリの列挙
    Debug.Print "クエリの列挙"
    For Each obj In CurrentData.AllQueries
        Debug.Print obj.Name
    Next

End Sub


Sub s20201017_2327()
    #If Not CBool(DEBUG_MODE) Then
        Exit Sub
    #End If
    
    Dim c
    
    With CurrentDb.OpenRecordset("select * from 見積詳細データ order by 見積番号")
        .MoveFirst
        For Each c In .Fields
            Debug.Print c.VALUE
        Next
        .MoveNext
        For Each c In .Fields
            Debug.Print c.VALUE
        Next
        .MoveNext
        For Each c In .Fields
            Debug.Print c.VALUE
        Next
        .MoveNext
        For Each c In .Fields
            Debug.Print c.VALUE
        Next
    End With
    
End Sub


Sub s20201023_1558()
    Call f20201023_1557(TBL_T_ESTM_DTL)
End Sub


Function f20201023_1557(TableName As String)
    Dim db As DAO.Database
    Dim tbd As DAO.TableDef
    Dim idx As DAO.Index
    Dim fld As DAO.Field
    Set db = CurrentDb
    Set tbd = db.TableDefs(TableName)
    For Each idx In tbd.Indexes
        If idx.Primary = True Then
            For Each fld In idx.Fields
                Debug.Print fld.Name
            Next
        End If
    Next
End Function





Sub s20201109_2316()
    Dim a, b, c, x
    Dim d As Boolean
    a = "a"
    b = "b"
    c = "c"
    x = 123
    
    debugPrintDev (checkWhetherControlsVacant(d, a, b, c))
    debugPrintDev (d)
    
End Sub


Sub s20201109_2345()
    Dim a As Long
    Dim b As Double
    Dim c As String
    a = 20000
    c = "1000000000000000000000000000000000.0000000001"
    
    b = a
    b = c
    
End Sub

#End If
