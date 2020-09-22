#!/bin/bash

background_color="#0d0d0e"
highlight_background="#070707"
foreground_color="#ffffff"
active_color="#D46493"

rofi -no-lazy-grab -show drun \
  -display-drun "Type application name" -drun-display-format "{name}" \
  -hide-scrollbar true \
  -bw 0 \
  -padding 16 \
  -lines 12 \
  -line-padding 2 \
  -width 30 \
  -xoffset 16 -yoffset 66 \
  -font "SF Pro Display 12" \
  -separator-style "none" \
  -show-icons \
  -location 1 \
  -columns 2 \
  -color-enabled true \
  -color-window "${background_color},${active_color},${foreground_color}" \
  -color-normal "${background_color},${foreground_color},${background_color},${highlight_background},${active_color}"
