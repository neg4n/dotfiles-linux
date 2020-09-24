#!/bin/bash

background_color="#10202020"
foreground_color="#ffffff"
border_color="#202020"
active_color="#909090"

power="$(
  rofi -no-lazy-grab -sep "|" -dmenu -i -p 'Select' \
    -hide-scrollbar true \
    -bw 2 \
    -padding 16 \
    -lines 5 \
    -line-padding 2 \
    -width 8 \
    -font "SF Pro Display 12" \
    -separator-style "none" \
    -show-icons \
    -location 0 \
    -columns 1 \
    -color-enabled true \
    -color-window "${background_color},${border_color},${foreground_color}" \
    -color-normal "${background_color},${foreground_color},${background_color},${background_color},${active_color}" \
    <<<"      Lock|    Logout|    Reboot|  Suspend| Shutdown"
)"

case "${power}" in
*Lock) dm-tool lock ;;
*Logout) loginctl terminate-user "$(whoami)" ;;
*Reboot) systemctl reboot ;;
*Suspend) systemctl suspend ;;
*Shutdown) systemctl -i poweroff ;;
esac
