#!/bin/bash
#This is script to reverse a string in bash

echo "Enter a string: "
read STR

echo ORIGINAL STRING IS: $STR

count=${#STR}

for((i=$count-1;i>=0;i--))
do
REV=$REV${STR:i:1}
done

echo Reverse of the string is : $REV
