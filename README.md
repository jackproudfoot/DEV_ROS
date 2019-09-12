# ROS workflow with Docker
This repository contains some starting points for developing a ROS workflow. Currently, using GUI programs is not working properly, but a basic ROS workspace can be created.

## Starting ROS workspace container
In the root of the directory running will start two containers: one running rose core and another that you can use as a workspace.
```bash
docker-compose up
```

This command will connect you to a bash prompt for the workspace docker container.

```bash
docker exec -it dev_ros_workspace_1 bash
```

From this point you can run any ROS commands such as:
```bash
rosnode list
```
or
```bash
cd ~/catkin_ws
catkin_make
```