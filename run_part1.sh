#!/bin/bash -l
#SBATCH -A naiss2024-22-116
#SBATCH -M rackham
#SBATCH -t 00-72:00:00
#SBATCH -p core
#SBATCH -n 16
#SBATCH -J vinitha_qtlseq
#SBATCH --output=qtlseq_run4.out
#SBATCH --error=qtlseq_run4.err

ml bioinfo-tools snpEff trimmomatic bwa samtools bcftools

# tools are: 
# 1) uppmax          3) java/OpenJDK_12+32   5) trimmomatic/0.39   7) samtools/1.20
# 2) bioinfo-tools   4) snpEff/5.2           6) bwa/0.7.18         8) bcftools/1.20  9) QTL-seq version 2.2.4


qtlseq -o qtlseq_analysis_run_4 \
       -n1 30 \
       -n2 30 \
       -w 100 \
       -s 20 \
       -t 16 \
       -r /proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/Bvulgarisssp_vulgaris_782_EL10.2.fa \
       -p /proj/uppstore2018171/abu/vinitha_qtl/snpseq/data/files/WJ-3814/20240220_LH00179_0046_B22HWMNLT3/Sample_WJ-3814-Resistant-parent/WJ-3814-Resistant-parent_S3_L001_R1_001.fastq.gz,/proj/uppstore2018171/abu/vinitha_qtl/snpseq/data/files/WJ-3814/20240220_LH00179_0046_B22HWMNLT3/Sample_WJ-3814-Resistant-parent/WJ-3814-Resistant-parent_S3_L001_R2_001.fastq.gz \
       -p /proj/uppstore2018171/abu/vinitha_qtl/snpseq/data/files/WJ-3814/20240220_LH00179_0046_B22HWMNLT3/Sample_WJ-3814-Susceptible-parent/WJ-3814-Susceptible-parent_S4_L001_R1_001.fastq.gz,/proj/uppstore2018171/abu/vinitha_qtl/snpseq/data/files/WJ-3814/20240220_LH00179_0046_B22HWMNLT3/Sample_WJ-3814-Susceptible-parent/WJ-3814-Susceptible-parent_S4_L001_R2_001.fastq.gz \
       -b1 /proj/uppstore2018171/abu/vinitha_qtl/snpseq/data/files/WJ-3814/20240220_LH00179_0046_B22HWMNLT3/Sample_WJ-3814-Resistant-pool/WJ-3814-Resistant-pool_S1_L001_R1_001.fastq.gz,/proj/uppstore2018171/abu/vinitha_qtl/snpseq/data/files/WJ-3814/20240220_LH00179_0046_B22HWMNLT3/Sample_WJ-3814-Resistant-pool/WJ-3814-Resistant-pool_S1_L001_R2_001.fastq.gz \
       -b2 /proj/uppstore2018171/abu/vinitha_qtl/snpseq/data/files/WJ-3814/20240220_LH00179_0046_B22HWMNLT3/Sample_WJ-3814-Susceptible-pool/WJ-3814-Susceptible-pool_S2_L001_R1_001.fastq.gz,/proj/uppstore2018171/abu/vinitha_qtl/snpseq/data/files/WJ-3814/20240220_LH00179_0046_B22HWMNLT3/Sample_WJ-3814-Susceptible-pool/WJ-3814-Susceptible-pool_S2_L001_R2_001.fastq.gz \
