#!/usr/bin/env bash

python rl_quantize.py \
    --arch qmobilenetv2 \
    --dataset imagenet100 \
    --dataset_root data/imagenet100 \
    --suffix ratio0556bit28 \
    --preserve_ratio 0.556 \
    --float_bit 8 \
    --max_bit 8 \
    --min_bit 2 \
    --n_worker 32 \
    --data_bsize 128 \
    --train_size 20000 \
    --val_size 10000 \
    --train_episode 200 \
    --linear_quantization
