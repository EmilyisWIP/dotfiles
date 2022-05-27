#!/usr/bin/env bash
if pidof youtube-music
then
  wmctrl -a youtube-music
  echo "open"
else
  zsh youtube-music
  echo "not open"
fi
