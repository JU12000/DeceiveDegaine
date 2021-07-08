;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 9
Scriptname TIF__06019D06 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_8
Function Fragment_8(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
pFDS.Persuade(akSpeaker)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Game.GetPlayer().RemoveItem(Statue, 1)
Game.GetPlayer().AddItem(Gold, RewardAmount)
GetOwningQuest().SetStage(100)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

FavorDialogueScript Property pFDS  Auto  

MiscObject Property Statue  Auto  

MiscObject Property Gold  Auto  

Int Property RewardAmount  Auto  
