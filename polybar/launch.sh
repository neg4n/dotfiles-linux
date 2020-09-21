#!/bin/bash

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar_directory="${HOME}/.config/polybar/"

polybar -c "${polybar_directory}/dummy.ini" dummy &
polybar -c "${polybar_directory}/config.ini" main
