if [ -z "$1" ]; then
    CONTAINER_NAME=parlai-jetson-dev
else
    CONTAINER_NAME=$1
fi
echo "Start the container $CONTAINER_NAME"
nvidia-docker start $CONTAINER_NAME
nvidia-docker exec -it $CONTAINER_NAME /bin/bash
