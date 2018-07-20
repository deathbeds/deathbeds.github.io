#!/usr/bin/env bash
set -ex

mkdir -p ${HOME}/download

cd ${HOME}/download

wget -N --quiet https://repo.continuum.io/miniconda/Miniconda3-${MINICONDA_VERSION}-Linux-x86_64.sh

echo "a946ea1d0c4a642ddf0c3a26a18bb16d *Miniconda3-${MINICONDA_VERSION}-Linux-x86_64.sh" | md5sum -c -

/bin/bash Miniconda3-${MINICONDA_VERSION}-Linux-x86_64.sh -f -b -p $CONDA_DIR

$CONDA_DIR/bin/conda config --system --prepend channels conda-forge
$CONDA_DIR/bin/conda config --system --set auto_update_conda false
$CONDA_DIR/bin/conda config --system --set show_channel_urls true

$CONDA_DIR/bin/conda install --quiet --yes conda="${MINICONDA_VERSION%.*}.*"

$CONDA_DIR/bin/conda update --all --quiet --yes
