#!/bin/bash

# --device -> usage to workaround openGL problem
# --rm -> avoid container flood
# --it -> TTY + STDIN
#
docker run -it --env="DISPLAY" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw"  --volume="$HOME/catkin_ws/:/catkin_ws:rw" krytnv2 /bin/bash
