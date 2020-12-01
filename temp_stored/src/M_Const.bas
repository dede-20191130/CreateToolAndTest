Attribute VB_Name = "M_Const"
'@Folder("Database")
Option Compare Database
Option Explicit

'**************************************
'*Constモジュール
'**************************************


'定数

'変数


'*****ツールプロパティ
Public Const TOOL_NAME As String = "T0001_02_見積書作成ツール"

'*****VBのカスタマイズ定数
Public Const myVBVacant As String = " "
Public Const myVBUL As String = "_"


'*****ACTIVEX
Public Const SCRIPTING_DICTIONARY As String = "scripting.dictionary"


'*****テーブル
Public Const TBL_M_BSC_TAX As String = "M_基礎データ_消費税率"
Public Const TBL_M_BSC_UNIT As String = "M_基礎データ_数量単位"

Public Const TBL_M_PERSON As String = "M_人名データ"
Public Const TBL_M_PROD As String = "M_商品データ"
Public Const TBL_M_ORG As String = "M_取引先会社データ"

Public Const TBL_T_ESTM As String = "T_見積データ"
Public Const TBL_T_ESTM_DTL As String = "T_見積詳細データ"



'*****フォーム
Public Const FormName_01 As String = "F01_Init"
Public Const FormName_02 As String = "F02_メニュー"
Public Const FormName_03 As String = "F03_設定"
Public Const FormName_03_SUB01 As String = "F03_設定_SUB01_基礎データ_消費税率"
Public Const FormName_03_SUB02 As String = "F03_設定_SUB02_基礎データ_数量単位"
Public Const FormName_04 As String = "F04_登録_編集"
Public Const FormName_04_SUB01 As String = "F04_登録_編集_SUB01_基礎データ_消費税率"
Public Const FormName_04_SUB02 As String = "F04_登録_編集_SUB02_基礎データ_数量単位"



'*****メッセージ
Public Const MESSAGE_TITLE_NOTICE As String = "注意"
Public Const MESSAGE_TITLE_WARNING As String = "警告"
Public Const MESSAGE_TITLE_ERROR As String = "エラー"
