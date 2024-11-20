#!/bin/bash
# Taxonomy Classification of Microbiota

# Downloading Classifier
wget https://data.qiime2.org/classifiers/sklearn-1.4.2/silva/silva-138-99-nb-classifier.qza

# Assigning taxonomy to the representative sequences
qiime feature-classifier classify-sklearn \
  --i-reads final-rep-seqs.qza \
  --i-classifier /project/stuckert/jdkoussa/final/silva-138-99-nb-classifier.qza \
  --o-classification fr-taxonomy.qza


# Visuallization of taxonomy
qiime taxa barplot \
--i-table final-table.qza \
 --i-taxonomy fr-taxonomy.qza \
--m-metadata-file final_metadata.tsv \
--o-visualization fr-taxa-bar-plots.qzv

