systemctl --user set-environment DISPLAY=:0
systemctl --user restart dunst.service
xset s off -dpms
exec dbus-launch --autolaunch=$(cat /var/lib/dbus/machine-id) bspwm
