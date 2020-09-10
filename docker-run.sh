if [ -z "$1" ]; then
    CONTAINER_IMG=parlai-dev
    CONTAINER_NAME=parlai-dev
else
    CONTAINER_IMG=$1
    CONTAINER_NAME=$1
fi

CONTAINER_PATH=/home/developer/projects

docker run -it \
    -v $(pwd)/ParlAI:$CONTAINER_PATH/ParlAI:rw \
    -v $(pwd)/models:$CONTAINER_PATH/ParlAI/models:rw \
    -v $(pwd)/ParlAI/data:$CONTAINER_PATH/ParlAI/data:rw \
    -v $(pwd)/scripts:$CONTAINER_PATH/scripts:rw \
    --name $CONTAINER_IMG $CONTAINER_NAME
