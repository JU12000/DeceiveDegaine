ScriptName QF_T01DegaineFavor_000D45F4 Extends Quest hidden

;-- Variables ---------------------------------------

;-- Properties --------------------------------------
ReferenceAlias Property Alias_Chalice Auto
ReferenceAlias Property Alias_Degaine Auto
Quest Property T01 Auto
MiscObject Property T01Chalice Auto
Quest Property T01Intro Auto

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

Function Fragment_7()
  If Game.GetPlayer().GetItemCount(T01Chalice as Form) >= 1 ; 
    Self.SetStage(20) ; 
  Else
    Self.SetObjectiveDisplayed(10, True, False) ; 
  EndIf
EndFunction

Function Fragment_4()
  Self.SetObjectiveCompleted(20, True) ; 
  If T01Intro.IsRunning() ; 
    T01Intro.SetStage(20) ; 
  EndIf
  Self.Stop() ; 
EndFunction

Function Fragment_1()
  Self.SetObjectiveCompleted(10, True) ; 
  Self.SetObjectiveDisplayed(20, True, False) ; 
EndFunction

Function Fragment_6()
  If !Self.IsObjectiveCompleted(10) ; 
    Self.SetObjectiveFailed(10, True) ; 
  EndIf
  Self.SetObjectiveFailed(20, True) ; 
  If T01Intro.IsRunning() ; 
    T01Intro.SetStage(20) ; 
  EndIf
  Self.Stop() ; 
EndFunction

Function Fragment_0()
  (T01 as t01questscript).DegainedEnlisted = True ; 
  If T01Intro.IsRunning() ; 
    T01Intro.SetStage(20) ; 
  EndIf
  If Game.GetPlayer().GetItemCount(T01Chalice as Form) >= 1 ; 
    Self.SetStage(20) ; 
  Else
    Self.SetObjectiveDisplayed(10, True, False) ; 
  EndIf
EndFunction
