#!/usr/bin/env bash
set -ex
$CONDA_DIR/bin/conda activate base

# on a branch only the notebook on the branch should run; on master everything.
ls deathbeds/*.ipynb |
  xargs python -m jupyter nbconvert \
    --execute \
    --ExecutePreprocessor.kernel_name=python \
    --to notebook
