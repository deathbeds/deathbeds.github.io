#!/usr/bin/env bash
set -ex
$CONDA_DIR/bin/conda activate base
python setup.py sdist
python setup.py bdist_wheel
conda env update -n root -f environment.yml
python -m pip install -r requirements.txt
python -m ipython profile create default
importnb-install
python -c "__import__('importnb.utils.ipython').utils.ipython.install('pidgin')"
python -m pip install dist/deathbeds-*.tar.gz --ignore-installed --no-deps
