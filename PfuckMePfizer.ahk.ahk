Gui, Add, Edit, r1 w250 vFreeTime

While (true)
{
	Sleep 3000
	MouseMove, 398, 960
	Click Down Left
	MouseMove, 600, 960
	Click Up Left
	SendInput ^c
	
	Gui, Show,, Date
	Sleep 500

	;copy and scan date of nearest appointment
	SendInput {Shift Down}
	SendInput {Ctrl Down}
	SendInput {NumpadHome}
	SendInput {Shift Up}
	SendInput v
	SendInput {Ctrl Up}
	Sleep 500
	Gui, Submit
	Sleep 500

	;if the desired timeslot is detected, the following script is executed
	If (SubStr(FreeTime, 1, StrLen(FreeTime) - 6) = "March 26")
	{
		Sleep 500
		MouseMove, 1000, 950
		Sleep 500
		Click 1000 950
		Sleep 500
		SendInput {Tab 3}
		Sleep 500
		SendInput {Enter}
		Sleep 500
		Click 1400 865
		Sleep 500
		SendInput {Tab}
		Sleep 500
		SendInput {Enter}
		Sleep 500
		Click 1000 750
		Sleep 500
		SendInput {Tab 3}
		Sleep 500
		SendInput {Enter}
		Sleep 500
		
		;scans element from page to see if our request went through
		MouseMove, 372, 800
		Click Down Left
		MouseMove, 435, 800
		Click Up Left
		SendInput ^c
		
		Sleep 500
		Gui, Show,, Scan

		SendInput {Shift Down}
		SendInput {Ctrl Down}
		SendInput {NumpadHome}
		SendInput {Shift Up}
		SendInput v
		SendInput {Ctrl Up}
		Sleep 500
		Gui, Submit
		Sleep 500

		;if we got the page we want, song is playedand program ends
		if (FreeTime != "Errors") 
		{
			SendInput {Media_Play_Pause}
			ExitApp
		}
		SendInput ^1
		Sleep 500
		Click 590 790 Right
		Sleep 500
		Click 600 795
		Sleep 500
		SendInput ^2
		Sleep 3000
	}
	
	Sleep 500
	Click 110 70
}



Esc::
ExitApp
return

