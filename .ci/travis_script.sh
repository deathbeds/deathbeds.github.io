#!/usr/bin/env bash
set -ex

source $CONDA_DIR/bin/activate base

# on a branch only the notebook on the branch should run; on master everything.
ipython -m deathbeds.tests -- --verbose

ls deathbeds/*.ipynb |
  xargs python -m jupyter nbconvert \
    --execute \
    --ExecutePreprocessor.kernel_name=python \
    --to notebook
