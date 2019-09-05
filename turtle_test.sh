ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
echo $ip
#xhost + $ip
#xhost + local:docker
docker run -it --rm --name turtlesim  -e DISPLAY=$ip:0 -v /tmp/.X11-unix:/tmp/.X11-unix:rw osrf/ros:kinetic-desktop
#docker run --rm -e DISPLAY=$ip:0 -v /tmp/.X11-unix:/tmp/.X11-unix aliustaoglu/firefox