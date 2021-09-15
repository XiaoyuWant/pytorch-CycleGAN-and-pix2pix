#!/bin/sh
#SBATCH -J Trans
#SBATCH -o trans.log
#SBATCH -e trans.err
#SBATCH -N 1 -n 10 --exclusive -p gpu2Q -q gpuq --gres=gpu:2

CUDA_VISIBLE_DEVICES=0,1

# train 0.5x
#python train.py --dataroot ./datasets/render --name render_0.5 --model cycle_gan --gpu_ids 0,1 --batch_size 16 

# train 
python train.py --dataroot ./datasets/render --name render --model cycle_gan --gpu_ids 0,1 --batch_size 2
wait
