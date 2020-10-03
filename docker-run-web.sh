# IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
# echo "Host IP: $IP"
# /usr/X11/bin/xhost +$IP

if [ -z "$1" ]; then
    CONTAINER_IMG=parlai-dev
    CONTAINER_NAME=parlai-dev-web
else
    CONTAINER_IMG=$1
    CONTAINER_NAME=$1
fi
PORT=8080
CONTAINER_PATH=/home/developer/projects

docker run -it \
    -v $(pwd)/ParlAI:$CONTAINER_PATH/ParlAI:rw \
    -v $(pwd)/scripts:$CONTAINER_PATH/scripts:rw \
    -p 8080:8080 \
    --name $CONTAINER_NAME $CONTAINER_IMG
