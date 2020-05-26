;------------------------------------------------------------------------------
;
; Spotify shortcuts
;
;------------------------------------------------------------------------------

#NoEnv

^Left::
  DetectHiddenWindows, On
  Send, ahk_parent, ^{Left}, ahk_class SpotifyMainWindow
  DetectHiddenWindows, Off
return

^Right::
  DetectHiddenWindows, On
  Send, ahk_parent, ^{Right}, ahk_class SpotifyMainWindow
  DetectHiddenWindows, Off
return

^Space::
  DetectHiddenWindows, On
  Send, ahk_parent, {space}, ahk_class SpotifyMainWindow
  DetectHiddenWindows, Off
return

^Up::
  DetectHiddenWindows, On
  Send, ahk_parent, ^{Up}, ahk_class SpotifyMainWindow
  DetectHiddenWindows, Off
return

^Down::
  DetectHiddenWindows, On
  Send, ahk_parent, ^{Down}, ahk_class SpotifyMainWindow
  DetectHiddenWindows, Off
return

^BS::
  DetectHiddenWindows, On
  Send, ahk_parent, ^+{Down}, ahk_class SpotifyMainWindow
  DetectHiddenWindows, Off
return
