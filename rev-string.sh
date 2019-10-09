#!/bin/bash

STRING="SATISH"

len=${#STRING}
echo length of string is: $len

echo Original string is: $STRING

for((i=$len-1;i>=0;i--))
do
echo ${STRING:i:1}
done

