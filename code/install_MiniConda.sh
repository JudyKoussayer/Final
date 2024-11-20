#!/bin/bash
# Download and install Miniconda

curl -sL  "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" > "Miniconda3.sh"
bash Miniconda3.sh

# Update Conda
conda update conda
rm Miniconda3.sh

# Install wget
conda install wget


