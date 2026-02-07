#!/bin/bash

NUMBER=$1

if [ $NUMBER -lt 10 ]; then
    echo " the given $NUMBER is less than 10"
else 
    echo "the given $NUMBER is greater then 10 or equal 10 "
fi

NUMBER=$2

if [ $NUMBER -gt 10 ]; then
    echo "given $NUMBER is greater then 10"
else
    echo "given $NUMBER is less then 10"
fi