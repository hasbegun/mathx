if [ -z "$1" ]; then
    CONTAINER_IMG=parlai-jetson-dev
    CONTAINER_NAME=parlai-jetson-dev
else
    CONTAINER_IMG=$1
    CONTAINER_NAME=$1
fi

CONTAINER_PATH=/home/developer/projects

nvidia-docker run -it --rm \
    --runtime nvidia \
    --gpus="all" \
    --memory="10g" --memory-swap="11g" \
    -v $(pwd)/ParlAI:$CONTAINER_PATH/ParlAI:rw \
    -v $(pwd)/scripts:$CONTAINER_PATH/scripts:rw \
    --network host \
    --name $CONTAINER_NAME $CONTAINER_IMG /bin/bash
