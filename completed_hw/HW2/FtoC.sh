#!/bin/bash
c=$((($1-32)*5/9))
K=$c+273
echo "$1 degrees F is equivalent to $c degrees C"
echo "It is also equivalent to $K Kelvin"
