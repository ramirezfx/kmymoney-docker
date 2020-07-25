HOME="$(echo ~)"
mkdir -p ${HOME}/docker/kmymoney-home
xhost +

docker run -ti \
    --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v ${HOME}/Dokumente/kmymoney:/home/kmymoney \
    --workdir ${HOME} \
    -e DISPLAY=$DISPLAY \
    -e HOME=${HOME} \
    -e USER=${USER} \
    -e USERID=${UID} \
    ramirezfx/kmymoney:latest
