#!/bin/bash -l
#SBATCH -A naiss2024-22-116
#SBATCH -M rackham
#SBATCH -t 00-24:00:00
#SBATCH -p core
#SBATCH -n 2
#SBATCH -J vin_qtlseq_run6
#SBATCH --output=qtlseq_run6.out
#SBATCH --error=qtlseq_run6.err

ml bioinfo-tools snpEff trimmomatic bwa samtools bcftools

# tools are: 
# 1) uppmax          3) java/OpenJDK_12+32   5) trimmomatic/0.39   7) samtools/1.20
# 2) bioinfo-tools   4) snpEff/5.2           6) bwa/0.7.18         8) bcftools/1.20  9) QTL-seq version 2.2.4


qtlplot -v /proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/qtlseq_analysis_run_5/30_vcf/qtlseq.vcf.gz \
        -o qtlseq_analysis_run_6 \
        -n1 30 \
        -n2 30 \
        -w 2000 \
        -s 100 \
        -t 2 \
        -m 0.4 \
        --igv \
        --fig-width 15 \
        --fig-height 8.0
