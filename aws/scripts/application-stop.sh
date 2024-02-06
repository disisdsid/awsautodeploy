#!/bin/bash
set -x
# it will print each command before executing it (-x) 

# System control will return either "active" or "inactive".
tomcat_running=$(systemctl is-active tomcat)
if [ "$tomcat_running" == "active" ]; then
    service tomcat stop
fi