--[[

This code was created using luamacros by Petr Medek (repo: https://github.com/me2d13/luamacro)

For the list of keys: https://github.com/me2d13/luamacros/wiki/List-of-Keys.

Example output for the device ID is '\\?\HID#VID_046D&PID_C313&MI_00#9&378940FB&0&0000#{884B96C3-56EF-11D1-BC8C-00A0C91405DD}'
and the UID is '378940FB'.

Note: This code will be updated in the future (for now it's purpose is to be an boilerplate, but it will be changed).

--]]

-- you can also use: lmc_assign_keyboard('device')
lmc_print_devices()
lmc_device_set_name('kbd', 'pick_your_uid') -- It should be behind 00#&& ....... and ends in the last &

lmc_set_handler(
  'kbd', function(button, direction)
  if (direction == 1) then return end
    if (button == 59) then
      lmc_send_keys('^+{I}')

    elseif (button == string.byte('N')) then
      lmc_spawn('code.cmd')

    elseif (button == 45) then
      lmc_send_keys('Text')

    elseif (button == 68) then
      lmc_send_keys('^a^v')

    elseif (button == 83) then
      lmc_send_keys('^a^c')

    elseif (button == 87) then
      lmc_send_keys('^z')

    elseif (button == 88) then
      lmc_send_keys('^x')

    elseif (button == 91) then
      lmc_send_keys('^s')

    elseif (button == 92) then
      lmc_spawn('notepad', 'c:\\file.txt')

    else
      print('Not an assigned button: ' .. button)

    end
  end)






  --[[

Button numbers (IBM AT-Style Keyboard http://www.penticoff.com/nb/kbds/ibm104kb.htm):

1=Esc
2=1
3=2
4=3
5=4
6=5
7=6
8=7
9=8
10=9
11=0
12=-
13==
14=BkSpc
15=Tab
16=Q
17=W
18=E
19=R
20=T
21=Y
22=U
23=I
24=O
25=P
26=[
27=]
28=Enter
29=Left Ctrl
30=A
31=S
32=D
33=F
34=G
35=H
36=J
37=K
38=L
39=;
40='
41=`
42=Left Shift
43=\
44=Z
45=X
46=C
47=V
48=B
49=N
50=M
51=,
52=.
53=/
54=Right Shift
55=Gray *
56=Left Alt
57=Space
58=Caps
59=F1
60=F2
61=F3
62=F4
63=F5
64=F6
65=F7
66=F8
67=F9
68=F10
69=NumLock
70=ScrollLock
71=Pad 7
72=Pad 8
73=Pad 9
74=Gray Minus
75=Pad 4
76=Pad 5
77=Pad 6
78=Gray Plus
79=Pad 1
80=Pad 2
81=Pad 3
82=Pad 0/Ins
83=Pad ./Del
84=PrtScr/SysRq
85=
86=
87=F11
88=F12
89=
90=Pause/Break
91=Insert
92=Home
93=PgUp
94=Gray /
95=Delete
96=End
97=PgDn
98=Right Alt
99=Right Ctrl
100=Up Arrow
101=Left Arrow
102=Down Arrow
103=Right Arrow
104=Gray Enter
105=Mouse

--]]
