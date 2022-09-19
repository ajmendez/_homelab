#!/bin/bash


echo 'begin setup...'

curl -o miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh
bash miniconda.sh
conda create --name flask flask jupyterlab
conda activate flask
conda install -c conda-forge opencv
conda install pytorch torchvision torchaudio -c pytorch
conda install matplotlib numpy pandas
conda install av -c conda-forge
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/xamendez/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install wget

conda create --name torch 
conda install pytorch torchvision torchaudio -c pytorch-nightly
