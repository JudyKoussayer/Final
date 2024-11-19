#!/bin/bash
# Install QIIME2

# Downloading File
curl -sL  "https://data.qiime2.org/distro/core/qiime2-2020.8-py36-linux-conda.yml" > "qiime2.yml"

# Creating QIIME2 Conda Environment
conda env create -n qiime2 --file qiime2.yml
rm qiime2.yml

# Activating QIIME2
conda activate qiime2-amplicon-2024.5

