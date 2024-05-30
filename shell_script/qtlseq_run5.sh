#!/bin/bash -l
#SBATCH -A naiss2024-22-116
#SBATCH -M rackham
#SBATCH -t 05-00:00:00
#SBATCH -p core
#SBATCH -n 20
#SBATCH -J vin_qtlseq
#SBATCH --output=qtlseq_run5.out
#SBATCH --error=qtlseq_run5.err

ml bioinfo-tools snpEff trimmomatic bwa samtools bcftools

# tools are: 
# 1) uppmax          3) java/OpenJDK_12+32   5) trimmomatic/0.39   7) samtools/1.20
# 2) bioinfo-tools   4) snpEff/5.2           6) bwa/0.7.18         8) bcftools/1.20  9) QTL-seq version 2.2.4


qtlseq -o qtlseq_analysis_run_5 \
       -n1 30 \
       -n2 30 \
       -w 100 \
       -s 20 \
       -t 20 \
       -r /proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/Bvulgarisssp_vulgaris_782_EL10.2.fa \
       -p qtlseq_analysis_run_4/00_fastq/parent.0000.1.trim.fastq.gz,/proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/qtlseq_analysis_run_4/00_fastq/parent.0000.2.trim.fastq.gz \
       -p /proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/qtlseq_analysis_run_4/00_fastq/parent.0001.1.trim.fastq.gz,/proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/qtlseq_analysis_run_4/00_fastq/parent.0001.2.trim.fastq.gz \
       -b1 /proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/qtlseq_analysis_run_4/00_fastq/bulk1.0000.1.trim.fastq.gz,/proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/qtlseq_analysis_run_4/00_fastq/bulk1.0000.2.trim.fastq.gz \
       -b2 /proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/qtlseq_analysis_run_4/00_fastq/bulk2.0000.1.trim.fastq.gz,/proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/qtlseq_analysis_run_4/00_fastq/bulk2.0000.2.trim.fastq.gz \
       --species Arabidopsis
       --mem
