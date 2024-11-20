Project began with installing the necessary software to obtain the FASTQ data from the NCBI SRR codes
The Accession Numbers for the data are PRJNA 1024480 for the data from Oklahoma, and PRJNA 435631 for the data from South Dakota

The software installed was the SRA Toolkit v.3.1.1
Install codes can be found in install_SRA.sh

After the files were downloaded through the SRA Toolkit, the metadata file was created, including the sample-ID (specifying either that the sample was from Oklahoma (OK) or from South Dakota (SD), the group (specifying the county in which the sample was collected), and the forward and reverse absolute filepaths for the FASTQ file reads

Then, MiniConda was installed in order to also install Qiime2
Install codes can be found in install_MiniConda.sh and install_qiime2.sh, respectively

Then, the tests were performed. Alpha Diversity tests (Shannon entropy and Faith's PD) and a Beta Diversity test (with Bray-Curtis Metric)

Finally, the taxonomy was classified. To classify the sequences, SILVA was used. Then, the results were visualized
