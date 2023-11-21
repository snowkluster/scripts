#! /usr/bin/env bash
# msys2 mingw64 -- not ucrt
declare GREEN='\033[0;32m'

pacman -Syuu
pacman -S mingw-w64-x86_64-freeglut
pacman -S mingw-w64-x86_64-glew
pacman -S mingw-w64-x86_64-glfw

echo -e "${GREEN}Read the file using cat command to get info about compilation"
########################################
# header files to include to compile opengl code
# #include <GL/glut.h>


#########################################
# linker flags to pass in vscode terminal
# -lfreeglut -lglew32 -lopengl32 -lglu32

##########################################
# example
# g++ main.cpp -lfreeglut -lglew32 -lopengl32 -lglu32
# this will produce a exe file to run 