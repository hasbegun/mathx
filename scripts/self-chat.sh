#!/bin/bash

cd ../ParlAI && parlai self_chat \
  -mf zoo:pretrained_transformers/model_poly/model \
  -t convai2 \
  --inference topk \
  --num-self-chats 10 \
  --display-examples True \
  -dt valid
