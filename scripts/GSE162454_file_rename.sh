#!/bin/bash

# Directory containing the files
input_dir="/scratch/user/s4543064/xiaohan-john-project/data/GSE162454"

# Create directories for each sample and move corresponding files
for file in "${input_dir}"/*_barcodes.tsv; do
    sample=$(basename "${file}" | cut -d'_' -f1-3)
    mkdir -p "${input_dir}/${sample}"
    mv "${input_dir}/${sample}"_* "${input_dir}/${sample}/"
done

# Remove prefix from files within each sample directory
for sample_dir in "${input_dir}"/*; do
    sample=$(basename "${sample_dir}")
    for file in "${sample_dir}"/*; do
        file_name=$(basename "${file}" | sed "s/${sample}_//")
        mv "${file}" "${sample_dir}/${file_name}"
    done
    # Rename feature.txt to gene.txt in each sample directory
    mv "${sample_dir}/features.tsv" "${sample_dir}/genes.tsv"	
done
