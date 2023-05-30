# Using nf-core/sarek to process raw whole exome sequencing (WES) data
## _nf-core/sarek (V3.0.1)_
## Usage

```sh
## create a screen first
screen -S nfcore_sarek

## run the pipeline and record the dynamic processing log
sh run_sarek.sh 1 > log.nextflow 2 > error.nextflow
```

## Suggestions

> **run each step separately**

Alignment, calling various types of variants, annotating variants, these steps will stack up together if many samples are processed by a single run, especially when the CPUs/memory are limited.
It is recommended to run these steps separately. This strategy can be done through running pipeline from different starting point by telling the files' correct position.


> **test pipeline**

For project that have more than 5 samples, it's better to test the pipeline on 3 samples first. The testing can check whether the set-up for project is correct, also can build index files for later use.
```bash
head -n 10 DesignFile.csv > test.DesignFile.csv
```

