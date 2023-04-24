#!/usr/bin/env bash

#set -x用来在运行结果之前,先输出执行的那一行命令
set -x

EXP_DIR=exps/Coda_Soda/OWDETR_t1
PY_ARGS=${@:1}

python -u main_open_world.py \
    --epochs 40 \
    --output_dir ${EXP_DIR} \
    --PREV_INTRODUCED_CLS 0 \
    --CUR_INTRODUCED_CLS 7 \
    --pretrain 'models/process_r50_deformable_detr-checkpoint.pth'\
    --train_set 't1_train_coda' \
    --test_set 'test_coda' \
    ${PY_ARGS}

