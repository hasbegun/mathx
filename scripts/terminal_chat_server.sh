PORT=1001
CONFIG_FILE=ParlAI/parlai/chat_service/tasks/chatbot/config.yml
sudo python3 ParlAI/parlai/chat_service/services/terminal_chat/run.py --config-path $CONFIG_FILE --port $PORT
