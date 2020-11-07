PORT=34596
HOST=0.0.0.0    # accept all IPs.
python3 ../ParlAI/parlai/chat_service/services/mathx_web/client.py \
    --host $HOST \
    --port $PORT
