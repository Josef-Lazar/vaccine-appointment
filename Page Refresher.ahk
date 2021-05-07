Gui, Add, Edit, r1 w250 vFreeTime

While (true)
{
	Random ranSleep, 2000, 7500
	sleep %ranSleep%
	Click 810 400			;REPLACE "###" WITH YOUR INPUT: picture 1 - im not a robot
	Sleep 4000
	MouseMove, 276, 504		;REPLACE "###" WITH YOUR INPUT: picture 2 - date scan
	Click Down Left
	MouseMove, 579, 498		;REPLACE "###" WITH YOUR INPUT: picture 3 - date scan
	SendInput ^c
	Click Up Left
	
	Gui, Show,, Date
	Sleep 1000

	;copy and scan date of nearest appointment
	SendInput {Shift Down}
	SendInput {Ctrl Down}
	SendInput {NumpadHome}
	SendInput {Shift Up}
	SendInput v
	SendInput {Ctrl Up}
	Sleep 1000
	Gui, Submit
	Sleep 1000

	match := false
	IfInString, FreeTime, "March"		;set your own month, date, or day
		match := true
	IfInString, FreeTime, "April 1"
		match := true
	IfInString, FreeTime, "Friday"
		match := true
	
	If (match = true)
	{
		Click 403 526		;REPLACE "###" WITH YOUR INPUT: picture 4 - appointment click
		Sleep 1000
		Click 970 671		;REPLACE "###" WITH YOUR INPUT: picture 5 - agree
		Sleep 1000
		Click 381 559		;REPLACE "###" WITH YOUR INPUT: picture 6 - first slot
		Sleep 1000
		Click 1304 958		;REPLACE "###" WITH YOUR INPUT: picture 7 - schedule
		Sleep 1000
		Click 948 679		;REPLACE "###" WITH YOUR INPUT: picture 8 - continue registration
		Sleep 1000
		Click 478 659		;REPLACE "###" WITH YOUR INPUT: picture 9 - nother checkbox
		Sleep 1000
		Click 970 779		;REPLACE "###" WITH YOUR INPUT: picture 10 - next
		SendInput {Media_Play_Pause}
		Sleep 1000
		SendInput ^1
	}
	
	If (match = false)
		SendInput ^w

	;open new tab
	Random ranSleep, 2000, 7500
	sleep %ranSleep%
	Click 706 795 Right		;REPLACE "###" WITH YOUR INPUT: picture 11 - distributor site
	Sleep 1000
	Click 754 812			;REPLACE "###" WITH YOUR INPUT: picture 12 - open link in new tab
	Sleep 1000
	SendInput ^2
	Sleep 3000
}

Esc::
ExitApp
return
