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

    elseif (button == 87) then
      lmc_send_keys('Some text')

    elseif (button == 91) then
      lmc_send_keys('^s')

    elseif (button == 92) then
      lmc_spawn('notepad', 'c:\\file.txt')

    else
      print('Not an assigned button: ' .. button)

    end
  end)
