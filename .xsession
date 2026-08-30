# Keyboard
setxkbmap de
setxkbmap -option "terminate:ctrl_alt_bksp"
setx b off
xset s off
xset -dpms

# Desktop
xrandr --output DisplayPort-0 --auto --output DisplayPort-1 --right-of DisplayPort-0 --output HDMI-A-0 --left-of DisplayPort-0

# Desktop
xrdb -load ~/.Xressources &
feh --bg-scale ~/cat.jpeg &

# App starter
nm-applet &
clipit &
pnmixer &
blueman-applet &
seafile-applet &
opensnitch &


# Scripts
~/Software/scripts/sync_clipboard.sh &
~/Software/scripts/wallpaper_changer.sh &
~/Software/scripts/dzen2-vpn.sh &

# Vars
export EDITOR=vim
export BROWSER=librewolf

# Transparency
picom --backend xrender &

# Start AwesomeWM
exec /usr/bin/awesome
