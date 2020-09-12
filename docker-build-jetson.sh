IMG_NAME=parlai-jetson-dev

sudo nvidia-docker build -t $IMG_NAME -f Dockerfile-jetson .
