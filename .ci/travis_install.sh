#!/usr/bin/env bash
set -ex

source $CONDA_DIR/bin/activate base

python setup.py sdist
python setup.py bdist_wheel

conda install -yq nomkl

for i in {1..3}
do conda env update -n root -f environment.yml && break || sleep 1
done

python -m pip install -r requirements-git.txt

ipython profile create default

importnb-install

python -c "__import__('importnb.utils.ipython').utils.ipython.install('pidgin')"

python -m pip install dist/deathbeds-*.tar.gz --ignore-installed --no-deps
