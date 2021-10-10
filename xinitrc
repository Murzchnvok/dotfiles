systemctl --user set-environment DISPLAY=:0
systemctl --user restart dunst.service
xset s off -dpms
xsetroot -cursor_name left_ptr
xinput set-prop "USB GAMING MOUSE " "libinput Accel Speed" 0
export SXHKD_SHELL="/bin/sh"
exec dbus-launch --autolaunch=$(cat /var/lib/dbus/machine-id) bspwm
