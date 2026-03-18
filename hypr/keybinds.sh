#!/bin/bash

kitty --title "Keybinds" \
      --override font_size=13 \
      --override window_padding_width=20 \
      --override background_opacity=0.9 \
      -e sh -c '
cat << "EOF"
╔══════════════════════════════════════════╗
║           HYPRLAND KEYBINDS             ║
╚══════════════════════════════════════════╝

── General ────────────────────────────────
  SUPER + Return         Terminal
  SUPER + W              Firefox
  SUPER + Q              Close window
  SUPER + Space          App launcher
  SUPER + F              Fullscreen
  SUPER + V              Toggle floating
  SUPER + M              Exit Hyprland
  SUPER + F1             Keybinds (this)

── Lock & Power ───────────────────────────
  SUPER + SHIFT + L      Lock screen
  SUPER + SHIFT + P      Power menu

── Apps ───────────────────────────────────
  SUPER + SHIFT + W      Wallpaper picker
  SUPER + SHIFT + N      Toggle night mode
  SUPER + .              Emoji picker

── Focus ──────────────────────────────────
  SUPER + H              Focus left
  SUPER + J              Focus down
  SUPER + K              Focus up
  SUPER + →              Focus right

── Workspaces ─────────────────────────────
  SUPER + 1-9            Switch workspace
  SUPER + SHIFT + 1-9    Move window to workspace

── Screenshot ─────────────────────────────
  Print                  Capture region → save

── Mouse ──────────────────────────────────
  SUPER + drag           Move window
  SUPER + ALT + drag     Resize window
  Edge drag              Resize window

── Media ──────────────────────────────────
  Fn + Brightness        Brightness up/down
  Fn + Volume            Volume up/down/mute
  Fn + Media             Play/pause/next/prev

EOF
read -n1 -r -p "  press any key to close..." key
'
