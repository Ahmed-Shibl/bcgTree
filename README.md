# core-genome-tree-builder

107 essential genes as described in:
Dupont CL, Rusch DB, Yooseph S, et al. Genomic insights to SAR86, an abundant and uncultivated marine bacterial lineage. The ISME Journal. 2012;6(6):1186-1199. doi:10.1038/ismej.2011.189.
Supplementary Table S1 (which is actually an image) contains a list of the used genes and HMMs with cut-offs.

From the manuscript:
"Genome completeness estimates
Using the Comprehensive Microbial Resource as a database, 107 hidden Markov models (HMMs) that hit
only one gene in greater than 95% of bacterial genomes were identified (Supplementary Table S1).
Trusted cutoff scores for the TIGRFAMs and Pfam HMMs were those supplied by the 
TIGRFAMs and Pfam libraries (Haft et al., 2003; Finn et al., 2010)."

In the publication:
M Albertsen,	Hugenholtz P, Skarshewski A, Nielsen KL, Tyson GW and Nielsen PH, Genome sequences of rare, uncultured bacteria obtained by differential coverage binning of multiple metagenomes. Nature Biotechnology 31, 533–538 (2013) doi:10.1038/nbt.2579
the authors use the same list of 107 genes (111 HMMs, glyS, pheT, proS and rpoC have two HMMs each)
as above and provide a readily created hmm file via [https://github.com/MadsAlbertsen/multi-metagenome/](github).