#!/bin/bash

set -ev

# prep genome lib
../FusionFilter/prep_genome_lib.pl --genome_fa minigenome.fa --gtf minigenome.gtf --fusion_annot_lib CTAT_HumanFusionLib.mini.dat.gz --annot_filter_rule AnnotFilterRule.pm --gmap_build

# run gmap-fusion
../GMAP-fusion -T discasm.Trinity.fasta --genome_lib_dir ctat_genome_lib_build_dir --left_fq ./rnaseq_1.fastq.gz --right_fq ./rnaseq_2.fastq.gz
