#!/bin/bash

for x in "$@"
do
y=$(echo "0.5 * ($x)^2" | bc)
echo "x=$x, y=$y"
done