;------------------------------------------------------------------------------
;
; Volume control
;
;------------------------------------------------------------------------------

#NoEnv

#Left::
  SoundSet, -5
return

#Right::
  SoundSet, +5
return

#BS:: ;Backspace
  Send {Volume_Mute}
return

^m::
  SoundSet, 1, Microphone, mute
return
