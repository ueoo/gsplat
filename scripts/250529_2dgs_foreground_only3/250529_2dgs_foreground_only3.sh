cd /svl/data/two-phase-flow/koven/gsplat
source /viscam/u/koven/mambdaforge/bin/activate
conda activate /svl/u/koven/mamba_envs/gsplat

SCRIPT_NAME=$(basename "$0" .sh)
BACKGROUND_PATH="results/250424_2dgs_walls/ckpts/ckpt_19999.pt"

# Train foreground with background loaded
CUDA_VISIBLE_DEVICES=0 python examples/simple_trainer_2dgs.py \
    --data_type blender \
    --data_dir data/sim11_sparse_cameras_only3 \
    --result_dir "results/${SCRIPT_NAME}" \
    --load_background "${BACKGROUND_PATH}" 