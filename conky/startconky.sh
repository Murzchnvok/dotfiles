#!/bin/sh

killall -9 conky

conky -c /home/$USER/.config/conky/datetime.conf &
