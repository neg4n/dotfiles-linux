#!/bin/bash

background_color="#10202020"
foreground_color="#ffffff"
border_color="#202020"
active_color="#909090"

rofi -no-lazy-grab -show drun \
  -display-drun "Type application name" -drun-display-format "{name}" \
  -hide-scrollbar true \
  -bw 2 \
  -padding 16 \
  -lines 12 \
  -line-padding 2 \
  -width 30 \
  -font "SF Pro Display 12" \
  -separator-style "none" \
  -show-icons \
  -location 0 \
  -columns 2 \
  -color-enabled true \
  -color-window "${background_color},${border_color},${foreground_color}" \
  -color-normal "${background_color},${foreground_color},${background_color},${background_color},${active_color}"
