;------------------------------------------------------------------------------
;
; Change audio device
;
;------------------------------------------------------------------------------

#NoEnv

audiodevice := "Headphones"
^a::
  if (audiodevice = "Headphones")
    audiodevice := "FocusriteUSB"
  else if (audiodevice = "FocusriteUSB")
    audiodevice := "Speakers"
  else if (audiodevice = "Speakers")
    audiodevice := "Headphones"

  run, nircmd.exe setdefaultsounddevice %audiodevice%
return
