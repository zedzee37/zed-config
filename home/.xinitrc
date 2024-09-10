exec ssh-agent -s &
unclutter &

xrdb -merge ~/.Xresources

xrandr --output DP-0 --mode 3840x2160 --rate 144
xrandr --output DP-4 --mode 2560x1440 --rate 165

exec i3
