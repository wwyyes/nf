# Using nf-core/rnaseq to process raw RNAseq data
## _nf-core/rnaseq (V3.10)_
## Usage

```sh
## create a screen first
screen -S nfcore_rnaseq

## run the pipeline and record the dynamic processing log
sh run_nextflow.sh 1 > log.nextflow 2 > error.nextflow
```

## Suggestions

> **strandedness**

If strandedness is not clearly indicated by sequencing kit, set the strandedness as 'auto' in DesignFile.csv.

```bash
sample,fastq_1,fastq_2,strandedness
sampleId,${fqdir}/sampleId_L001_R1_001.fastq.gz,${fqdir}/sampleId_L001_R2_001.fastq.gz,auto
```

> **test pipeline**

For project that have more than 5 samples, it's better to test the pipeline on 3 samples first. The testing can check whether the set-up for project is correct, also can build index files for later use.
```bash
head -n 10 DesignFile.csv > test.DesignFile.csv
```
> **skip QC steps**


Various qaulity control tools were included in the pipeline. For time being, several of them can be skipped
```sh
## in nf-params.json file
"skip_bigwig": true,
"skip_preseq": true,
"skip_qualimap": true,
"skip_dupradar": true,
"skip_biotype_qc": true,
"skip_markduplicates": true,
```
> **increase time limit for time-consuming steps**

For example, TIN can be extremely slow, and the pipeline will stop if the time is over time limitation. Provide such config file when running pipeline can extend time limitation for TIN module.
```sh
## provide a customized config file
process {
  withName: 'NFCORE_RNASEQ:RNASEQ:BAM_RSEQC:RSEQC_TIN' {
    time = 32.h
    cpu = 6
  }
}
```
