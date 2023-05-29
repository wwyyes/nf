#!/bin/bash

wdir=${projectDir}
proj=$(echo $wdir | perl -ne '$_ =~ s/.*CBBI_Projects\///; $_ =~ s/\/.*//;; print')
dt=$(date '+%Y_%m_%d_%H_%M_%S');
runname="mRNAseq_${proj}_${dt}"


echo $runname

### run nextflow ####

nextflow \
        run nf-core/rnaseq \
        -r 3.10 \
        -profile singularity \
        --input DesignFile.csv \
        --singularity_pull_docker_container \
        -name $runname \
        -params-file nf-params.json \
        -resume \
        -c tin.config
