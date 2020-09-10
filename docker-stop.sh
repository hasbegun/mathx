if [ -z "$1" ]; then
    CONTAINER_NAME=parlai-dev
else
    CONTAINER_NAME=$1
fi
echo "Stop the container $CONTAINER_NAME"
docker stop $CONTAINER_NAME
