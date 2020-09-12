MODEL_PATH=/home/developer/projects/ParlAI/models/babi

echo "display examples from bAbI 10k task 1"
echo "====================================="
parlai display_data -t babi:task10k:1

echo "MemNN using batch size 1 and for 5 epochs"
echo "====================================="
parlai train_model -t babi:task10k:1 -mf $MODEL_PATH/babi_memnn -bs 1 -eps 5 -m memnn --no-cuda

echo "display predictions for model save at specified file on bAbI task 1"
echo "====================================="
parlai display_model -t babi:task10k:1 -mf $MODEL_PATH/babi_memnn -ecands vocab