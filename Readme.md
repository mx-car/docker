# base-ros2

This is a container TurboVNC and Ubuntu XFCE desktop.

First, get the image by cloning this repository and building it:
```
docker build -f Dockerfile-base -t mxr:base-ros2 --build-arg MY_PASSWORD=xyz431 .
docker build -f Dockerfile-ws   -t mxr:ws .
```

Then, run it:
```
docker run --privileged -ti --network="host" mxr:ws
docker run --privileged -ti --network="host"  --device=/dev/ttyUSB0 --device=/dev/ttyACM0 --device=/dev/ttyACM1 --device=/dev/input/js0  --env="DISPLAY" mxr:ws

```

Create a permanent container
```
export NAME=ros
export IMAGE=robotics:base
docker create --name $NAME --privileged --hostname=$NAME --add-host $NAME:127.0.0.1  --interactive  --network="host"  $IMAGE
docker container start $NAME
docker container exec -it $NAME bash
```
