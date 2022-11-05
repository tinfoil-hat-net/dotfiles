setxkbmap de
setx b off
nm-applet &
picom &
xrdb -load ~/.Xresources &
feh --bg-scale ~/Bilder/wall.jpg &
nitrogen --restore &

exec /usr/bin/awesome
