;------------------------------------------------------------------------------
;
; Chrome shortcuts
;
; I will be adding more probably
;
;------------------------------------------------------------------------------

#NoEnv

#c::
	Run Chrome
return

^h::
	Send, ^t
	Send, https://github.com/endormi
	Send, {Enter}
return

^s::
	Send, ^t
	Send, https://stackoverflow.com
	Send, {Enter}
return

^u::
	Send, https://mail.google.com/mail/u/0/#inbox
	Send, {Enter}
return
