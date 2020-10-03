PORT=34596
HOST=0.0.0.0    # accept all IPs.
python3 ../ParlAI/parlai/chat_service/services/browser_chat/client.py \
    --host 0.0.0.0 \
    --port $PORT
