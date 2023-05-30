#!/bin/bash

RESUME=" -resume"
wdir=${projectDir}/01Alignment
proj=$(echo $wdir)
dt=$(date '+%Y_%m_%d_%H_%M_%S');
runname="Sarek_${proj}_${dt}"
#pushd $wdir
echo $runname

##
nextflow \
        run nf-core/sarek \
        -r 3.0.1 \
        --input DesignFile.csv \
        -profile singularity \
        -name $runname \
        -params-file nf-params.mapping.json \
        $RESUME
##
#popd
