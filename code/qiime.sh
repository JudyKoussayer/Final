#!/bin/bash
# Allocate appropriate time and memory to undergo the task
#SBATCH --job-name=qiime
#SBATCH --output=qiime_out
#SBATCH --time=05:00:00
#SBATCH --mem=15G
#SBATCH --cpus-per-task=5

# Activating qiime2 application
module load qiime2/2024.5
source activate qiime2-amplicon-2024.5

# Importing Paired-End Sequence to qiime2
qiime tools import 
--type 'SampleData[PairedEndSequencesWithQuality]' 
--input-path final_metadata.tsv 
--output-path final-paired-end-demux.qza 
--input-format PairedEndFastqManifestPhred33V2

# Runs DADA2 to process paired-end sequence to remove noise and correct errors
# Forward and reverse pairs were truncated to 250 bases
qiime dada2 denoise-paired \
  --i-demultiplexed-seqs fr-paired-end-demux.qza \
  --o-table final-table.qza \
  --o-representative-sequences final-rep-seqs.qza \
  --o-denoising-stats final-denoising-stats.qza \
  --p-trim-left-f 0 \
  --p-trim-left-r 0 \
  --p-trunc-len-f 250 \
  --p-trunc-len-r 250


