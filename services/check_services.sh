#!/bin/bash

check_services() {
    local SERVICE=$1

    if pgrep -x "$SERVICE" > /dev/null; then
        echo "$SERVICE is ON"
        echo "$SERVICE has been active for $(ps -p $(pgrep -x "$SERVICE") -o etime=)"
    else 
        echo "$SERVICE in OFF"
    fi
}   

check_services "jboss"
check_services "tomcat"