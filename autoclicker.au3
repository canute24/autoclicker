Global $iCondi = 1
Local $aClickPos[2]

HotKeySet("`", "Toggle") ; Backtick used as shortcut to toggle autoclicking

While(1)
	Local $aFirstPos = MouseGetPos()
	Sleep (150) //150ms Delay
	Local $aLastPos = MouseGetPos()
	If (($aLastPos[0] == $aFirstPos[0]) And ($aLastPos[1] == $aFirstPos[1])	And	_
	(($aLastPos[0] <> $aClickPos[0]) And ($aLastPos[1] <> $aClickPos[1])) And $iCondi) Then
		$aClickPos = $aLastPos
		MouseClick("left", $aLastPos[0], $aLastPos[1])
		Send ("{LCTRL}")
	EndIf
	Local $aFirstPos = MouseGetPos()
WEnd

Func Toggle()
	$iCondi = 1 ? $iCondi = 0 : $iCondi = 1
EndFunc
