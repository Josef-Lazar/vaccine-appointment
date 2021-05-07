^k::
MouseGetPos, xpos, ypos 
MsgBox, The cursor is at X%xpos% Y%ypos%
return

^l::
MouseMove, ###, ###	;  <-- YOUR INPUT
return

Esc::
ExitApp
return
