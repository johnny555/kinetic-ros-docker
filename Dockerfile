FROM ros:kinetic-robot-xenial

# update packages and install dependencies
RUN apt-get update && apt-get install -y \
    ros-kinetic-rviz ros-kinetic-rqt \ 
    wget

# set missing environment variable needed to run Qt applications
ENV QT_X11_NO_MITSHM 1
ENV ROS_MASTER_URI=http://ubiquityrobot.local:11311
#ENV ROS_IP=`hostname -i`
# source bash
SHELL ["/bin/bash", "-c"] 
RUN source /opt/ros/kinetic/setup.bash
#RUN rm /root/.Xauthority
# IF catkin_ws is set in container instead of host
## set catkin workspace
#RUN mkdir catkin_ws/ && \
#    cd catkin_ws/ && \
#    mkdir src && \
#    catkin_make

# source bash
#RUN source /catkin_ws/devel/setup.bash

