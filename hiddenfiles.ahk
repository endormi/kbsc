;------------------------------------------------------------------------------
;
; Show hidden files
;
;------------------------------------------------------------------------------

#NoEnv

hidden := "Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden"
superhidden := "Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden"

#h::
	RegRead, status, HKCU, % hidden
	if (status = 2)
		RegWrite, REG_DWORD, HKCU, % hidden, 1
		RegWrite, REG_DWORD, HKCU, % superhidden, 1
	else
		RegWrite, REG_DWORD, HKCU, % hidden, 2
		RegWrite, REG_DWORD, HKCU, % superhidden, 0
	send {f5}
return
