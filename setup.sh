#!/bin/bash


echo 'begin setup...'

curl -o miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh
bash miniconda.sh
conda create --name flask flask jupyterlab
conda activate flask
conda install -c conda-forge opencv

