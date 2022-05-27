if pidof chrome -s
then
  wmctrl -a chrome
  echo "open"
else
  chrome
  echo "not open"
fi
