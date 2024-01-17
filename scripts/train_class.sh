#!/usr/bin/env bash
##################################################################
# TU Wien specific variables
##################################################################
export CUDA_VISIBLE_DEVICES=1

##################################################################vv
# CUDA variables
##################################################################
# prevents the allocator from splitting blocks larger than this size (in MB).
export PYTORCH_CUDA_ALLOC_CONF=max_split_size_mb:1024

cd ../
python3 main.py   --version 1\
                  --run train \
                  --num_data_workers 4 \
                  --lr 1e-4 \
                  --batch_size 8 \
                  --data_path webnlg-dataset/release_v3.0/en \
                  --checkpoint_step_frequency 1000 \
                  --focal_loss_gamma 3 \
                  --dropout_rate 0.5 \
                  --num_layers 2 \
                  --edges_as_classes 1 \
                  --checkpoint_model_id -1 \
                  --default_root_dir output \
                  --accelerator gpu \
                  --max_epochs 100 \
                  --num_nodes 1 \
                  --num_sanity_val_steps 0 \
                  --fast_dev_run 0 \
                  --overfit_batches 0 \
                  --limit_train_batches 1.0 \
                  --limit_val_batches 1.0 \
                  --limit_test_batches 1.0 \
                  --accumulate_grad_batches 10 \
                  --log_every_n_steps 100 \
                  --val_check_interval 1000 \

# --detect_anomaly 0 \
# --cache_dir /newstorage4/fkovacev/data/core/Grapher/cache \