#!/bin/bash
set -xe
# it will print each command before executing it (-x) and exit on any error (-e). 

# Delete the old  directory as needed.
if [ -d /usr/local/codedeployresources ]; then
    rm -rf /usr/local/codedeployresources/
fi

mkdir -vp /usr/local/codedeployresources
