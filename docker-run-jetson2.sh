if [ -z "$1" ]; then
    CONTAINER_NAME=parlai-jetson-dev2
else
    CONTAINER_NAME=$1
fi

CONTAINER_PATH=/home/developer/projects
CONTAINER_IMG=parlai-jetson-dev

echo "Container img: $CONTAINER_IMG"
echo "Container name: $CONTAINER_NAME"

nvidia-docker run -it \
    --runtime nvidia \
    --device /dev/nvhost-as-gpu \
    --device /dev/nvhost-ctrl \
    --device /dev/nvhost-ctrl-gpu \
    --device /dev/nvhost-ctxsw-gpu \
    --device /dev/nvhost-dbg-gpu \
    --device /dev/nvhost-gpu \
    --device /dev/nvhost-prof-gpu \
    --device /dev/nvhost-sched-gpu \
    --device /dev/nvhost-tsg-gpu \
    --device /dev/nvmap \
    -v $(pwd)/ParlAI:$CONTAINER_PATH/ParlAI:rw \
    -v $(pwd)/scripts:$CONTAINER_PATH/scripts:rw \
    --network host \
    --name $CONTAINER_NAME $CONTAINER_IMG /bin/bash
