#!/bin/bash
#SBATCH --job-name=qiime
#SBATCH --output=qiime_out
#SBATCH --time=05:00:00
#SBATCH --mem=15G
#SBATCH --cpus-per-task=5

module load qiime2/2024.5
source activate qiime2-amplicon-2024.5

qiime dada2 denoise-paired \
  --i-demultiplexed-seqs fr-paired-end-demux.qza \
  --o-table final-table.qza \
  --o-representative-sequences final-rep-seqs.qza \
  --o-denoising-stats final-denoising-stats.qza \
  --p-trim-left-f 0 \
  --p-trim-left-r 0 \
  --p-trunc-len-f 250 \
  --p-trunc-len-r 250


