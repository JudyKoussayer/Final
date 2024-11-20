#!/bin/bash
# Alpha Divesrity Tests

# Shannon Diversity Test
# Generating qza file
qiime diversity alpha \
 --i-table final-table.qza \
 --p-metric shannon \
 --o-alpha-diversity fr-alpha-diversity.qza
# Generating qzv file for visualization
qiime diversity alpha-group-significance \
 --i-alpha-diversity fr-alpha-diversity.qza \
 --m-metadata-file final_metadata.tsv \
 --o-alpha-diversity fr-alpha-diversity.qzv





# Faith PD Test
# Generating qza file
qiime diversity alpha \
  --i-table final-table.qza \
  --i-phylogeny fr-rooted-tree.qza \
  --p-metric faith_pd \
  --o-alpha-diversity fr-faith-alpha-diversity.qza
# Generating qzv file for visualization
qiime diversity alpha-group-significance \
  --i-alpha-diversity fr-faith-alpha-diversity.qza \
  --m-metadata-file final_metadata.tsv \
  --o-visualization fr-faith-alpha-group-significance.qzv

