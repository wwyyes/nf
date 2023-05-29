# Making the use of nextflow nfcore pipeline to process data
## _adapt in wwang's project setting_

## Features
- Run nf-core pipeline in singularity conda environment
- Limit the CPUs and memory usage
- Increase time limit for time-consuming steps

## Installation
Install all requirments in conda
```sh
## set conda channels
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge
```
### nextflow
```sh
## create an environment called nextflow and install nextflow
conda create --name nextflow nextflow
## actiavte the nextflow envrionment
conda activate nextflow
```
### singularity
```sh
## install singularity in the same environment with nextflow
conda install -c conda-forge singularity
```


## Reference
| Tools | Link |
| ------ | ------ |
| nextflow | https://www.nextflow.io |
| nf-core | https://nf-co.re |
| singularity | https://anaconda.org/conda-forge/singularity |
