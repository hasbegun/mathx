if [ -z "$1" ]; then
    CONTAINER_NAME=parlai-dev
else
    CONTAINER_NAME=$1
fi

echo "Remove the container $CONTAINER_NAME"
docker rm $CONTAINER_NAME
