#!/bin/bash

# find . -type -f | grep -e CMakeCache -e CMakeOutput -e

echo "Reomve CMakeFiles directory"
find . -type d | grep -e CMakeFiles | xargs rm -rf

echo "Reomve CMake files"
find . -type f | grep -e CMakeCache.txt -e cmake_install.cmake -e Makefile | xargs rm 

echo "Reomve flex compile file"
find . -type f | grep -e lex.yy.c | xargs rm 

echo "Reomve execute file"
find . -type f | grep -e curly$ -e allman$ -e knr$ | xargs rm 

