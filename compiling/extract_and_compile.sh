#!/bin/bash

num=$1
dir_path=$2

#echo The value of num is $num
#echo The path is $dir_path

tar -xzf NthPrime.tgz -C $dir_path

cd $dir_path/NthPrime

gcc -o NthPrime main.c nth_prime.c nth_prime.h

./NthPrime $num
