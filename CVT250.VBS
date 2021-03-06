'-------------------------------------------------------------------------------
'-- VBS script file
'-- Created on 08/20/2018 10:36:16
'-- Author: 
'-- Comment: 
'-------------------------------------------------------------------------------
Option Explicit  'Forces the explicit declaration of all the variables in a script.



'-----------clear all data---------------------------
'Call Data.Root.Clear()

'-----------create group and channel---------------------------
'Dim oMyGrp, oMyChn, i
'Set oMyGrp = Data.Root.ChannelGroups.Add("CVTGroup")
'Set oMyChn = oMyGrp.Channels.Add("SBNTrend",DataTypeFloat64)
'For i = 1 to 100
  'oMyChn.Values(i) = CDbl(i/20000)
'Next



'-----------Load data---------------------------
'Call DataFileLoad("C:\Users\test\Desktop\cycle00844step04.dat","edas_dat","Register")
 'file format can be (mdf3 famos edas_dat)



'-----------remove all views---------------------------
Call View.Sheets.RemoveAll


'-----------create view sheet---------------------------
Dim oMySheet: Set oMySheet = View.Sheets.Add("CVT250")
oMySheet.ActiveArea.DisplayObjType = "CurveChart2D"
Call oMySheet.ActiveArea.DisplayObj.Curves2D.Add("X_Channel","canDynoR_T")
Call oMySheet.ActiveArea.DisplayObj.Curves2D.Add("X_Channel","canDynoL_T")
'Call View.Sheets(1).Areas(1).DisplayObj.ShowCurvesDlg
'-----------create view split sheet---------------------------
'Dim oNewArea: Set oNewArea = oMySheet.ActiveArea.SplitTop("NewArea",0.5) 
'oNewArea.DisplayObjType = "CurveChart2D"
'Call oNewArea.DisplayObj.Curves2D.Add("X_Channel","canDynoR_T")
'Call oNewArea.DisplayObj.Curves2D.Add("X_Channel","canDynoL_T")
'-----------split sheet---------------------------
'Set oMySheet = View.Sheets.Add("NewSheet")
'Dim oMyArea: Set oMyArea = oMySheet.ActiveArea
'Dim oMyTopArea: Set oMyTopArea = oMyArea.SplitTop("TopArea",0.5)
'Dim oMyRightArea: Set oMyRightArea = oMyTopArea.SplitRight("RightArea",0.5)
'Dim oMyBottomArea: Set oMyBottomArea = oMyRightArea.SplitBottom("BottomArea",0.5)
'Dim oMyLeftArea: Set oMyLeftArea = oMyBottomArea.SplitLeft("LeftArea",0.5)
'-----------view refresh---------------------------
View.AutoRefresh = TRUE
Call View.Refresh




