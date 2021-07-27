#!/bin/bash

echo "Welcome to flip coin simulator program"

res=$((RANDOM%2))

if [ $res -eq 0 ]
then
        echo "Heads is winner"
else
        echo "tails is winner"
fi

