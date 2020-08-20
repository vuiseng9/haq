#!/usr/bin/env bash

python rl_quantize.py \
    --arch qmobilenetv2 \
    --dataset imagenet100 \
    --dataset_root data/imagenet100 \
    --suffix find_qparams \
    --preserve_ratio 1.0 \
    --float_bit 8 \
    --max_bit 4 \
    --min_bit 4 \
    --n_worker 32 \
    --data_bsize 128 \
    --train_size 20000 \
    --val_size 10000 \
    --train_episode 2500 \
    --linear_quantization
