#! /bin/bash
setxkbmap -layout us,ir -option grp:alt_shift_toggle

currenttime=$(date +%H:%M)

function run {
    if [ ! -f /tmp/started ]; then
        $@&
    fi
}

if [[ "$currentime" > "19:00" ]] || [ "$currentime" < "06:30"]; then
    run xbacklight -set 70%
else
    run xbacklight -set 100%
fi

run code
run firefox
run slack
run telegram-desktop
run terminator
run /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=spotify --file-forwarding com.spotify.Client
run xxkb
run nm-applet
touch /tmp/started