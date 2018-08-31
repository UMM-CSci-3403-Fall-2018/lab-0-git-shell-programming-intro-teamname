#!/bin/bash

# Setting the given parameters to variables 
num=$1
dir_path=$2

# Unzip the tar file and put it in the given directory path 
tar -xzf NthPrime.tgz -C $dir_path

cd $dir_path/NthPrime

# Compile the C code into an executable 
gcc -o NthPrime main.c nth_prime.c

# Run the C executable with the given number 
./NthPrime $num
