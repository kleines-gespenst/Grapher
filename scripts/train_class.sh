#!/usr/bin/env bash
cd ../
python3 main.py   --version 1\
                  --run train \
                  --num_data_workers 4 \
                  --lr 1e-4 \
                  --batch_size 11 \
                  --data_path /mnt/data/core/Grapher/webnlg-dataset/release_v3.0/en \
                  --cache_dir /mnt/data/core/Grapher/cache \
                  --checkpoint_step_frequency 1000 \
                  --focal_loss_gamma 3 \
                  --dropout_rate 0.5 \
                  --num_layers 2 \
                  --edges_as_classes 1 \
                  --checkpoint_model_id -1 \
                  --default_root_dir output \
                  --accelerator cpu \
                  --max_epochs 100 \
                  --num_nodes 1 \
                  --num_sanity_val_steps 0 \
                  --fast_dev_run 0 \
                  --overfit_batches 0 \
                  --limit_train_batches 1.0 \
                  --limit_val_batches 1.0 \
                  --limit_test_batches 1.0 \
                  --accumulate_grad_batches 10 \
                  --detect_anomaly False \
                  --log_every_n_steps 100 \
                  --val_check_interval 1000 \