cd /svl/data/two-phase-flow/koven/gsplat
source /viscam/u/koven/mambdaforge/bin/activate
conda activate /svl/u/koven/mamba_envs/gsplat

SCRIPT_NAME=$(basename "$0" .sh)
# Train background only
CUDA_VISIBLE_DEVICES=0 python examples/simple_trainer_2dgs.py --data_type blender --data_dir data/sim12_bg_only --result_dir "results/${SCRIPT_NAME}"

# Example for training foreground with background loaded:
# CUDA_VISIBLE_DEVICES=0 python examples/simple_trainer_2dgs.py --data_type blender --data_dir data/sim12_fg_only --result_dir "results/${SCRIPT_NAME}_fg" --load_background "results/${SCRIPT_NAME}/ckpts/ckpt_19999.pt"