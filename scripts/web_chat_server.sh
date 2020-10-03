PORT=34596
sudo python3 ../ParlAI/parlai/chat_service/services/browser_chat/run.py \
  --config-path ../ParlAI/parlai/chat_service/tasks/chatbot/config.yml \
  --port $PORT
