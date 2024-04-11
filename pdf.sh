#!/bin/sh

# the first argument is the original file name
# the second argument is the output file name 

Green="\e[32m"
Red="\033[0;31m"
NC='\033[0m'

reduce() {
  printf "%b reducing PDF size %b\n" "$Green" "$NC"
  gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook \
    -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$2" "$1"
}

if [ $# -ne 2 ]; then
  echo "${Red}2 argument must be supplied"
  echo "first argument is the original PDF file name"
  printf "second argument is the output PDF file name %b\n" "$NC"
  exit 1
fi

if [ -x "$(command -v gs)" ]; then
 reduce "$1" "$2" 
else 
  echo "${Red}ghost script not installed ${NC}"
  printf "%b install it using $(sudo apt-get update && sudo apt-get install -y ghostscript) %b\n" "$Green" "$NC"
  exit 1
fi
