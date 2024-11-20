Microbiota Diversity in Acris blanchardi: A Comparative Study of Populations from Oklahoma and South Dakota

Project Overview: This study investigates how microbial diversity and composition differs across distinct populations of A. blanchardi; LeFlore County and Marshall County in Oklahoma and Missouri River Valley in South Dakota. It was hypothesized that the three populations will have different microbial diversity and compositions, but similar geographical locations will retain some similarities. A multitude of bioinformatic analysis were performed using paired-end FASTQ files derived from 16S rRNA sequencing and QIIME2 to refine the data, resulting in alpha diversity analysis (Shannon entropy and Faith's PD), beta diversity analysis (Bray-Curtis), and a taxonomic classification report for all samples.

Objectives:
1) Analyze the skin microbiota diversity and composition in populations of A. blanchardi
2) Comapre microbioal communities across populations with distinct environemnts
3) Determine what factors are shaping the microbial communities

Hypothesis: 
It is hypotehsized that both the diversity and predominant taxa within the two populations of Oklahoma will be similar due to relatively similar geographical location and environmental factors
It is also hypothesized the diversity and predominant taxa across the populations of Oklahoma and South Dakota will vary vastly due to different geographical locations and environmetal facotrs

Methodology:
Samples were collected from three distinct populations; two in Oklahoma (LeFlore County and Marshall County) and one in South Dakota (Misourri River Valley)

Data will be analyzed in Linux by:
1) Alpha diveristy (Shannon entropy and Faith's PD)
2) Beta diversity (Bray-Curtis dissimilarity)
3) Taxonomic classification of dominant taxa

Tools and Softwares:
SRA Toolkit to download raw data from NCBI
MiniConda3 to download software
QIIME2 for microbiome analysis
SILVA extention for taxonomic classification

Key Findings
Missouri River Valley had the most uniform microbiota and displayed the most differences
LeFlore County had the most variety of microbiota
There was a reduce in dissimilarity between the two populations of Oklahoma
Conservation implications: relocation efforts should account for changes in environment

Potential Further Directions
Expand scope of sample and geographic location
Incorportae specific environmental facotrs (temperature, pollution, etc.)


Layout of Repository:
Taxonomy_Composition_Levels: Consists of .cvs files detailing microbrial classifications of samples across phylum (level 2) and species (level 7)
code: Consists of .sh scripts and written codes used for all aspects of project (installation of software/data, data refinement, and visualization)
data_new: Consists of all FASTQ files used in the study
visual_metrics: Consists of all .qza files used to process the data for analyses
visual_results: Consists of all .qzv files used to visualize results in QIIME2Visualize
final_metadata.tsv: Consists of the metadata used in the study
workflow-notebook.md: Contains a brief outline of the analysis pipeline
