#!/bin/bash

echo "Generating the lists of explicitly installed packages in ~/.backup"

if [ -d "~/.backup" ]; then
  echo "Creating a new .backup, please input password"
  sudo mkdir ~/.backupfi
fi


npm list -g --depth=0 >> ~/.backup/npm_packages || echo "npm failed"
pip list >> ~/.backup/pip_packages || echo "pip failed"
cargo --list | tail -n +2 | tr -d " " >> ~/.backup/cargo_packages || echo "cargo failed"
apt-mark showmanual >> ~/.backup/apt_packages || echo "apt failed"

git add -f .backup

exit 0
