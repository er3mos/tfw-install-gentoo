#!/usr/bin/env sh

FIFO="$XDG_RUNTIME_DIR/sandbar"
[ -e "$FIFO" ] && rm -f "$FIFO"
mkfifo "$FIFO"

while cat "$FIFO"; do :; done | sandbar \
  -font "Hack Nerd Font Mono:Pixelsize" \
  -active-fg-color "#000000" \
  -active-bg-color "#98971a" \
  -inactive-fg-color "#ebdbb2" \
  -inactive-bg-color "#000000" \
  -urgent-fg-color "#000000" \
  -urgent-bg-color "#cc241d" \
  -title-fg-color "#000000" \
  -title-bg-color "#98971a"
