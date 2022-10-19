#!/bin/bash
. ./views.sh
DISTROS=("Arch" "Debian" "Red-Hat/Fedora<=21" "Sabayon" "OpenSUSE" "Fedora>=22")
DISTRO=""
PROGRAMS=("vscode" "neovim" "microsftteam" "nodejs" "git")
COPYPROGRAMS=("${PROGRAMS[@]}")
OPTIONS=""
echo "Welcome! Let's start install programs!"
showDistros ${DISTROS[*]}
read DISTRO
showProgramms ${PROGRAMS[*]} 
read OPTIONS
OPTIONS=$(echo "$OPTIONS" | tr '[:lower:]' '[:upper:]' )

OPTIONS=($OPTIONS)

case $OPTIONS in 
  "A")
    echo "Installing ..."
    ;;
  *)
    echo "The opcion is incorrect"
    exit 1
esac
  


