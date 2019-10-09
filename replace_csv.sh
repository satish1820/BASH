#!/bin/bash

#Replace 3rd column with 1st column and vice versa
# First solution
awk -F, '{print $3 $2 $1 $4}' a.csv    

# Second solution same as 1st but written in second file
awk -F, '{ print $3 "," $2 "," $1 "," $4}' a.csv > b.csv

# The above command works well but that will not be valid sol. if they give randon column then how you can replace


