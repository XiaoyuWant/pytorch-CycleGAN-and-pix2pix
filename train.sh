#!/bin/sh
#SBATCH -J Trans
#SBATCH -o trans.log
#SBATCH -e trans.err
#SBATCH -N 1 -n 10 --exclusive -p gpu4Q -q gpuq --gres=gpu:2



CUDA_VISIBLE_DEVICES=0,1


python train.py --dataroot ./datasets/render --name render_multibactch --model cycle_gan --gpu_ids 0,1 --batch_size 16

wait
