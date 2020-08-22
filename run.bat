@echo off

:: Ugly batch script
:: using ping as a time.sleep mehtod in Python

echo Run files using an interactive CLI
ping 127.0.0.1 -n 2 > nul
echo Current choices are 0 (abbr), 1 (audiodevice), 2 (chr), 3 (erb), 4 (hiddenfiles), 5 (kbd), 6 (spotify), 7 (technical-abbrs) and 8 (volume).
ping 127.0.0.1 -n 2 > nul
set /p input="Type in the number of the file you want to use: "

if %input%==0 (
  cd ./abbr
  echo Running abbr
  call abbr.ahk
  cd ../
  ) else (
    if %input%==1 (
      echo Running audiodevice
      call audiodevice.ahk
      ) else (
        if %input%==2 (
          echo Running chr
          call chr.ahk
          ) else (
            if %input%==3 (
              echo Running erb
              call erb.ahk
              ) else (
                if %input%==4 (
                  echo Running hiddenfiles
                  call hiddenfiles.ahk
                  ) else (
                    if %input%==5 (
                      cd ./abbr
                      echo Running kbd
                      python kbd.py
                      cd../
                      ) else (
                        if %input%==6 (
                          echo Running spotify
                          call spotify.ahk
                          ) else (
                            if %input%==7 (
                              cd ./abbr
                              echo Running technical-abbrs
                              call technical-abbrs.ahk
                              cd ../
                              ) else (
                                if %input%==8 (
                                  echo Running volume
                                  call volume.ahk
                                  ) else (
                                    echo Not a valid choice!
                                    )
                                )
                            )
                        )
                    )
                )
            )
        )
    )
