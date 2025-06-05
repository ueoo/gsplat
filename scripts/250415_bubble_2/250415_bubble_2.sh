cd /svl/data/two-phase-flow/koven/gsplat
source /viscam/u/koven/mambdaforge/bin/activate
conda activate /svl/u/koven/mamba_envs/gsplat

CUDA_VISIBLE_DEVICES=0 python examples/simple_trainer.py default --data_type blender --data_dir data/bubble_2 --result_dir results/bubble_2