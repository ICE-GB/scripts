#! /bin/bash

INNER_PORT=eDP-1
OUTPORT1=DP-1
OUTPORT2=DP-2

sc=$(xrandr | grep -w 'connected' | grep -w 'connected' | awk '{print $1}' | fzf --header=选择设备)
light=$(echo -e "1.0\n0.8\n0.6\n0.4\n0.2" | fzf --header=选择亮度)


xrandr --output $sc --brightness $light
