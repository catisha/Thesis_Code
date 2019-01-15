#!/bin/bash


# Analyse the new sample using macs2

# Make sure I'm in the right place
cd ~/Documents/Aim_2/homo_sapiens_neutrophil/


# for i in $(seq 1 2); do
#         echo $i
#         H3K36me3_FILES+=(~/Documents/Aim_2/homo_sapiens_neutrophils/H3K36me3_${i}_filtered_alignments.bed)
#         Control_FILES+=(~/Documents/Aim_2/homo_sapiens_neutrophils/Control_${i}_filtered_alignments.bed)
# echo "${H3K36me3_FILES[$i]}"
# echo "${Control_FILES[$i]}"



# done

# extract out just chromosomes we need and put into new bed files

rm Control_1_filtered_alignments_extracted_chromosomes.bed
rm Control_2_filtered_alignments_extracted_chromosomes.bed
rm H3K36me3_1_filtered_alignments_extracted_chromosomes.bed
rm H3K36me3_2_filtered_alignments_extracted_chromosomes.bed

for i in $(seq 1 22) X Y; do
    echo "chr${i}"
    bedextract chr${i} sorted_Control_1_filtered_alignments.bed >> Control_1_filtered_alignments_extracted_chromosomes.bed
    bedextract chr${i} sorted_Control_2_filtered_alignments.bed >> Control_2_filtered_alignments_extracted_chromosomes.bed
    bedextract chr${i} sorted_H3K36me3_1_filtered_alignments.bed >> H3K36me3_1_filtered_alignments_extracted_chromosomes.bed
    bedextract chr${i} sorted_H3K36me3_2_filtered_alignments.bed >> H3K36me3_2_filtered_alignments_extracted_chromosomes.bed

done

#callpeak -t SRR038734_1_p300_T0.20.filtered.bed -m 5 100


macs2 callpeak -B -t H3K36me3_1_filtered_alignments.bed H3K36me3_2_filtered_alignments.bed \
-c Control_1_filtered_alignments.bed Control_2_filtered_alignments.bed \
--broad -n H3K36me3 --outdir macs2_analysis

# Other Analyses
# macs2 callpeak -B -t H3K36me3_1_filtered_alignments_extracted_chromosomes.bed H3K36me3_2_filtered_alignments_extracted_chromosomes.bed \
#         -c Control_1_filtered_alignments.bed Control_2_filtered_alignments.bed \
#         --broad -n H3K36me3_all_pvalues --outdir macs2_analysis \
#         -p 0.99
# in case I need tags later?
#TAGS_H3K36me3=$(grep "tags after filtering in treatment" H3K36me3_peaks.xls | awk '{print $NF}')



