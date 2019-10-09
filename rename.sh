#!/bin/bash

for i in `ls`
do
mv $i $(echo $i| sed 's/pqr/mnp/g')
done

