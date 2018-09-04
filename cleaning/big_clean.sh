#!/bin/bash

here=$(pwd)
archive=$1
directory=$2

# mkdir $directory

tar -xzf $archive -C $directory 

cd $directory

find -type f -exec grep -q "DELETE ME!" {} \; -delete

archive_name=$(basename $archive ".tgz")

tar -zcf cleaned_$archive $archive_name

mv cleaned_$archive $here


