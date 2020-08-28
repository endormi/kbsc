--[[

The keyboard layout is different for many keyboards so update the keys
to match your keyboard layout.

I got the inspiration for this code from KingCprey (https://github.com/KingCprey)

I have not yet included this code in the run.bat file, because it
still has some issues I need to work on.

Note: This code will updated.

--]]

local key={}
key[34]="A"
key[29]="B"
key[26]="C"
key[30]="D"
key[46]="E"
key[49]="F"
key[47]="G"
key[74]="H"

key[311]="K"
key[7]="L"
key[244]="M"
key[249]="N"

key[199]="P"
key[44]="Q"
key[45]="R"
key[33]="S"
key[245]="T"
key[303]="U"
key[0]="V"
key[32]="W"
key[77]="X"
key[246]="Y"
key[20]="Z"
key[39]="["
key[27]="Up"
key[173]="Down"
key[174]="Left"
key[175]="Right"
key[19]="LAlt"
key[168]="F7"
key[288]="F1"
key[289]="F2"
key[170]="F3"
key[166]="F5"
key[167]="F6"
key[56]="F9"
key[57]="F10"
key[344]="F11"
key[157]="1"
key[158]="2"
key[160]="3"
key[164]="4"
key[165]="5"
key[159]="6"
key[161]="7"
key[162]="8"
key[163]="9"
key[21]="LShift"

local count=0

while true do
  local i=0

  while i<500 do
    if IsControlPressed(0, i) then

      if key[i]==nil then
        print(count .. " CONTROL PRESSED = " .. i)
        count=count+1
      else
        print(i .. " is " .. key[i])
        break
      end

    end
    i=i+1

  end

  if IsControlPressed(0, 20) then
    break
  end

end
