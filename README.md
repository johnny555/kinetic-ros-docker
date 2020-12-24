# Helper scripts to setup docker for robot testing. 

[ROS Docker GUI](http://wiki.ros.org/docker/Tutorials/GUI)
[ROS Gui](https://github.com/igricart/docker.git)


Note that we are using the lazy and rekless approach to allow access to the local X11. We could use something like X11docker to avoid this, but we are trying to be expedient here. Just don't forget to turn off the permissions when you are done.

# Getting Setup

1. You will need docker installed. 
2. You should create a `catkin_ws` folder on your computer.
3. In a subfolder called `src` of `catkin_ws` clone the `johnny555\coffee_robot` repo and also `ubiquity\magni_robot` github repos. Also copy `util/hosts` into 'catkni_ws' for use later.
4. Build the docker image `docker build -t krytnv2 .`
5. Run `start_kinetic.sh` to get a shell. (You may need to modify this to make sure you mount your `catkin_ws` folder correctly)
6. `cd catkin_ws` then `catkin_make` to configure your environment
7. Now you can run `source /catkin_ws/devel/setup.bash` to get your bash environment setup.
9. Overwrite the `hosts` file so that it can correctly setup your IP's `cp /catkin_ws/hosts /etc/hosts`
8. Goto the every time instructions. 

# Every time instructions 

You need docker. This has been tested on ubuntu 20.10. 

1. You need to allow your x-windows access, on ubuntu this can be done by running `allw_x_root.sh`.
2. Run `start_kinetic.sh`, this will drop you into a bash shell. 
3. Now you can run `source /catkin_ws/devel/setup.bash` to get your bash environment setup.
4. Find out your hosts ip and then set it as an environment variable, e.g. if your ip is 10.1.1.190 then `export ROS_IP=10.1.1.190`
5. Now you can finally run RViz, try `roslaunch coffee_robot view_nav.launch`
