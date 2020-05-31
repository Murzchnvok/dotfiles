systemctl --user set-environment DISPLAY=:0
systemctl --user restart dunst.service
xset s off
xset -dpms
xset s noblank
exec bspwm
