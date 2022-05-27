xprop -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY \
  $(printf 0x%x $((0xffffffff * 100 / 100)))
