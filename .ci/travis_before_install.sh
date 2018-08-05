#!/usr/bin/env bash
set -ex

mkdir -p ${HOME}/download

cd ${HOME}/download

if [ ! -f Miniconda3-${MINICONDA_VERSION}-Linux-x86_64.sh ]; then
  wget --quiet https://repo.continuum.io/miniconda/Miniconda3-${MINICONDA_VERSION}-Linux-x86_64.sh
fi

echo "a946ea1d0c4a642ddf0c3a26a18bb16d *Miniconda3-${MINICONDA_VERSION}-Linux-x86_64.sh" | md5sum -c -

bash Miniconda3-${MINICONDA_VERSION}-Linux-x86_64.sh -f -b -p $CONDA_DIR

source $CONDA_DIR/bin/activate base

conda config --system --prepend channels conda-forge
conda config --system --set auto_update_conda false
conda config --system --set show_channel_urls true
