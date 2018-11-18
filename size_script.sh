#!/bin/bash
dir=$1

for file in $dir/*
do 
echo "File $file size is => $(stat --printf='%s' $file)Bytes."
done
