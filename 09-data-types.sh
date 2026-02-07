#!/bin/bash
#everything is shell is consider as string
NUMBER1=100
NUMBER2=200
NAME=DEVOPS

SUM=$(($NUMBER1+$NUMBER2+$NAME))
echo "SUM is ${SUM}"


LEADERS=("Modi" "putin" "trumph" "trudo")

echo "ALL LEADERS: ${LEADERS[@]}"
echO "First leader: ${LEADERS[0]}"
echO "First leaders:${LEADERS[10]}"
