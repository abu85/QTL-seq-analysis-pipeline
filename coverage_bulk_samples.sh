#!/bin/bash -l
#SBATCH -A naiss2024-22-116
#SBATCH -M rackham
#SBATCH -t 02-24:00:00
#SBATCH -p core
#SBATCH -n 16
#SBATCH --job-name=genome_coverage
#SBATCH --output=genome_coverage_updated.out
#SBATCH --error=genome_coverage_updated.err

# Load necessary modules
ml bioinfo-tools samtools BEDTools

# Define variables
BAM_FILES=(
    "/proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/qtlseq_analysis_run_5/20_bam/bulk1.bam"
    "/proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/qtlseq_analysis_run_5/20_bam/bulk2.bam"
)

GENOME_FAI="/proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/qtlseq_analysis_run_5/10_ref/Bvulgarisssp_vulgaris_782_EL10.2.fa.fai"

# Function to calculate genome coverage
calculate_coverage() {
    local bam_file=$1
    local coverage_file="${bam_file%.bam}_coverage.txt"

    # Index the BAM file if not already indexed
    if [ ! -f "${bam_file}.bai" ]; then
        samtools index $bam_file
    fi

    # Calculate genome coverage
    bedtools genomecov -ibam $bam_file > $coverage_file

    # Calculate the percentage of genome coverage
    python3 - <<EOF
bam_file = "$bam_file"
total_genome_size = 0
covered_bases = 0

with open("$GENOME_FAI") as fai:
    for line in fai:
        total_genome_size += int(line.split()[1])

with open("$coverage_file") as cov:
    for line in cov:
        fields = line.split()
        if fields[0] != "genome":
            covered_bases += int(fields[2]) * int(fields[3])

coverage_percentage = (covered_bases / total_genome_size) * 100
print(f"Genome coverage for {bam_file}: {coverage_percentage:.2f}%")
EOF
}

# Calculate coverage for each BAM file
for bam_file in "${BAM_FILES[@]}"; do
    calculate_coverage $bam_file
done
