--[[

This code was from src/samples/key-kombinations.lua.
https://github.com/me2d13/luamacros/blob/master/src/samples/key-kombinations.lua

Example output for the device ID is '\\?\HID#VID_046D&PID_C313&MI_00#9&378940FB&0&0000#{884B96C3-56EF-11D1-BC8C-00A0C91405DD}'
and the UID is '378940FB'.

It can be easily customized for your own liking, I didn't really update this code because
I couldn't come up with any ideas :D (and I also wanted to push this code ASAP).

Note: This code will updated.

--]]

-- lmc_minimize();
-- lmc_reset();
-- you can also use: lmc_assign_keyboard('device')
lmc_print_devices()
lmc_device_set_name('kbd', 'pick_your_uid')
-- lmc.minimizeToTray = false

-- on every trigger following keys with alt + shift are send - looped with every press
send_keys = {'B', 'C', 'D'}
cIndex = 1

function pressedKey(key)
  lmc_send_input(string.byte(key), 0, 0)
  -- press
  lmc_send_input(string.byte(key), 0, 2)
  -- release
end

function ShiftPress(callback)
  lmc_send_input(16, 0, 0)
  -- press
  callback()
  lmc_send_input(16, 0, 2)
  -- release
end

function AltPress(callback)
  lmc_send_input(18, 0, 0)
  -- press
  callback()
  lmc_send_input(18, 0, 2)
  -- release
end

function CtrlPress(callback)
  lmc_send_input(17, 0, 0)
  -- press
  callback()
  lmc_send_input(17, 0, 2)
  -- release
end

-- define callback for a certain key
lmc_set_handler('kbd', 50, 0,
  function(button, direction)
    CtrlPress(function()
      AltPress(function()
        ShiftPress(function()

          pressedKey(send_keys[cIndex])

        end)
      end)
    end)
    cIndex = (cIndex == #send_keys and 1 or cIndex + 1)
  end)
