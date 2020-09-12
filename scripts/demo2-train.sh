MODEL_PATH=/home/developer/projects/ParlAI/models/personachat_tr6

parlai display_data -t squad
parlai eval_model -m ir_baseline -t personachat -dt valid
parlai train_model -t personachat -m transformer/ranker -mf \
    $MODEL_PATH/model_tr6 --n-layers 1 \
    --embedding-size 300 --ffn-size 600 \
    --n-heads 4 --num-epochs 2 \
    -veps 0.25 -bs 64 -lr 0.001 \
    --dropout 0.1 --embedding-type fasttext_cc \
    --candidates batch
