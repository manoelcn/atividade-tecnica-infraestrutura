#!/bin/bash

SERVICE1="sleep"
SERVICE2="tomcat"

if pgrep -x "$SERVICE1" > /dev/null; then
    echo "$SERVICE1 is ON"
    echo "$SERVICE1 has been active for $(ps -p $(pgrep -x "$SERVICE1") -o etime=)"
else
    echo "$SERVICE1 is OFF"
fi

if pgrep -x "$SERVICE2" > /dev/null; then
    echo "$SERVICE2 is ON"
    echo "$SERVICE2 has been active for $(ps -p $(pgrep -x "$SERVICE2") -o etime=)"
else
    echo "$SERVICE2 is OFF"
fi