#!/bin/sh

set -e

Green="\e[32m"
Red="\033[0;31m"
NC='\033[0m'

reduce() {
  printf "%b reducing PDF size %b\n" "$Green" "$NC"
  gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook \
    -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$2" "$1"
}

if [ $# -eq 0 ]; then
	echo "use the --help or -h flag to get usage information"
	echo "made by @snowkluster"
	exit 0
fi

if [ -x "$(command -v gs)" ]; then
	if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
		echo "${Green}2 argument must be supplied"
  		echo "first argument is the original PDF file name"
  		printf "second argument is the output PDF file name %b\n" "$NC"
  		exit 0
	fi
 reduce "$1" "$2" 
else 
  echo "${Red}ghost script not installed ${NC}"
  printf "%b install it using $(sudo apt-get update && sudo apt-get install -y ghostscript) %b\n" "$Green" "$NC"
  exit 1
fi

