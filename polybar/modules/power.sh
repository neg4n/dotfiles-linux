#!/bin/bash

background_color="#000000"
highlight_background="#070707"
foreground_color="#ffffff"
active_color="#cd2563"

power="$(
  rofi -no-lazy-grab -sep "|" -dmenu -i -p 'Select' \
    -hide-scrollbar true \
    -bw 0 \
    -padding 16 \
    -lines 5 \
    -line-padding 2 \
    -width 8 \
    -xoffset -16 -yoffset 66 \
    -font "SF Pro Display 12" \
    -separator-style "none" \
    -show-icons \
    -location 3 \
    -columns 1 \
    -color-enabled true \
    -color-window "${background_color},${active_color},${foreground_color}" \
    -color-normal "${background_color},${foreground_color},${background_color},${highlight_background},${active_color}" \
    <<<"      Lock|    Logout|    Reboot|  Suspend| Shutdown"
)"

case "${power}" in
*Lock) dm-tool lock ;;
*Logout) loginctl terminate-user "$(whoami)" ;;
*Reboot) systemctl reboot ;;
*Suspend) systemctl suspend ;;
*Shutdown) systemctl -i poweroff ;;
esac
