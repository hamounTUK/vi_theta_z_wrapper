

xhost +local:root

docker run -it --rm -v '/dev/bus/usb':'/dev/bus/usb' \
    --network=host \
    --privileged \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    vi-theta-z-wrapper
     
export containerId=$(docker ps -l -q)
    
xhost -local:root 

