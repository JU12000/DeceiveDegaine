Scriptname DDFailT01OnDeath extends Actor  

Quest Property T01DegaineFavor  Auto  

Event OnDying(Actor akKiller)
	T01DegaineFavor.SetStage(200)
EndEvent