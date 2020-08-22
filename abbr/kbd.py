"""

Keyboard abbreviations (type @.. and then press space)

"""

import keyboard

keyboard.add_abbreviation('@email', 'your.email@example.com')
keyboard.add_abbreviation('@yt', 'your_youtube')
keyboard.add_abbreviation('@gh', 'your_github')
keyboard.add_abbreviation('@t', 'your_twitter')
keyboard.add_abbreviation('@tw', 'your_twitch')
keyboard.add_abbreviation('@so', 'your_stackoverflow')
keyboard.add_abbreviation('@py', 'your_PyPi')
keyboard.add_abbreviation('@npm', 'your_npm')
keyboard.add_abbreviation('@red', 'your_reddit')
keyboard.add_abbreviation('@s', 'your_steam')
keyboard.wait('esc')
