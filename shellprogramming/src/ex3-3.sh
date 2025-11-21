#!/bin/bash
sum=0
for x in "$@"
do
    if [ "$x" -ge 90 ]; then
        echo "$x 점: A"
    else
        echo "$x 점: B"
    fi
    sum=$(($sum + $x))
done

avg=$((sum / $#))

if [ "$avg" -ge 90 ]; then
        echo "평균 등급: A"
    else
        echo "평균 등급: B"
fi