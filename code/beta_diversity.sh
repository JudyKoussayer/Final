#!/bin/bash
# Beta Divesrity Test
# Used Bray-Curtis Metric

# To calculate using Bray-Curtis dissimilarity
qiime diversity beta \
  --i-table final-table.qza \
  --p-metric braycurtis \
  --o-distance-matrix bray_curtis_distance_matrix.qza

# Visualizing Results
qiime diversity beta-group-significance \
  --i-distance-matrix bray_curtis_distance_matrix.qza \
  --m-metadata-file final-metadata.tsv \
  --m-metadata-column Group \
  --o-visualization fr-beta-group-significance.qzv \
  --p-pairwise



