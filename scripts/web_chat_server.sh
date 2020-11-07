PORT=34596
sudo python3 ../ParlAI/parlai/chat_service/services/mathx_web/run.py \
  --config-path ../ParlAI/parlai/chat_service/tasks/mathx_chatbot/config.yml \
  --port $PORT
