#!/bin/sh

# the first argument is the original file name
# the second argument is the output file name 
# simple script to reduce the size of PDF files

Green="\e[32m"
Red="\033[0;31m"
NC='\033[0m'

if [ -x "$(command -v gs)" ]; then
  printf "%b reducing PDF size %b\n" "$Green" "$NC"
  gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook \
    -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$2" "$1"
else 
  echo "${Red}ghost script not installed ${NC}"
  printf "%b install it using $(sudo apt-get update && sudo apt-get install -y ghostscript) %b\n" "$Green" "$NC"
fi
