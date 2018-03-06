#!/bin/bash

set -ev

# prep genome lib
../FusionFilter/prep_genome_lib.pl --genome_fa minigenome.fa --gtf minigenome.gtf --fusion_annot_lib CTAT_HumanFusionLib.mini.dat.gz --annot_filter_rule AnnotFilterRule.pm --gmap_build

