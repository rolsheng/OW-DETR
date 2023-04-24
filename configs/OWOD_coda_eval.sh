#!/usr/bin/env bash

#set -x用来在运行结果之前,先输出执行的那一行命令
set -x

EXP_DIR=exps/Coda/OWOD_t1
PY_ARGS=${@:1}

python -u main_open_world.py \
    --output_dir ${EXP_DIR} \
    --PREV_INTRODUCED_CLS 0 \
    --CUR_INTRODUCED_CLS 5 \
    --train_set 't1_train_coda' \
    --test_set 'test_coda' \
    --epochs 16 \
    --nc_epoch 9 \
    --resume 'exps/Coda/OWDETR_t1/checkpoint0004.pth' \
    --eval \
    ${PY_ARGS}

