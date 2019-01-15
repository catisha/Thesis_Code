#!/bin/bash


cd ~/Documents/Aim_2/homo_sapiens_neutrophil




for i in $(seq 1 22) M X Y; do
    echo $i
    cd ~/Documents/Aim_2/homo_sapiens_neutrophil/H3K36me3_1_split_alignments/


    ~/bin/bin/peakranger bcp -d sorted_H3K36me3_1_filtered_alignments_${i}.bed \
    -c ~/Documents/Aim_2/homo_sapiens_neutrophil/Control_1_split_alignments/sorted_Control_1_filtered_alignments_${i}.bed \
    --format bed -o ../BCP_analysis/results_H3K36me3_replicate_1_chromosome_${i} \
    --verbose

    cd ~/Documents/Aim_2/homo_sapiens_neutrophil/H3K36me3_2_split_alignments/


    ~/bin/bin/peakranger bcp -d sorted_H3K36me3_2_filtered_alignments_${i}.bed \
    -c ~/Documents/Aim_2/homo_sapiens_neutrophil/Control_1_split_alignments/sorted_Control_1_filtered_alignments_${i}.bed \
    --format bed -o ../BCP_analysis/results_H3K36me3_replicate_2_chromosome_${i} \
    --verbose
    
    

done

# Not used

# ~/bin/bin/peakranger bcp -d H3K36me3_1_filtered_alignments.bed \
# -c Control_1_filtered_alignments.bed \
# --format bed -o BCP_analysis/results_H3K36me3_replicate_1_control_1 \
# --verbose --report

# ~/bin/bin/peakranger bcp -d H3K36me3_2_filtered_alignments.bed \
# -c Control_1_filtered_alignments.bed \
# --format bed -o BCP_analysis/results_H3K36me3_replicate_2_control_1 \
# --verbose --report


# for i in $(seq 1 22) M X Y; do
#     echo $i
#     cd ~/Documents/Aim_2/homo_sapiens_neutrophil/H3K36me3_1_split_alignments/


#     ~/bin/bin/peakranger bcp -d sorted_H3K36me3_1_filtered_alignments_${i}.bed \
#     -c ~/Documents/Aim_2/homo_sapiens_neutrophil/Control_1_split_alignments/sorted_Control_1_filtered_alignments_${i}.bed \
#     --format bed -o ../BCP_analysis/results_H3K36me3_replicate_1_chromosome_${i}_0.5_pval \
#     --verbose --pval 0.05

#     cd ~/Documents/Aim_2/homo_sapiens_neutrophil/H3K36me3_2_split_alignments/


#     ~/bin/bin/peakranger bcp -d sorted_H3K36me3_2_filtered_alignments_${i}.bed \
#     -c ~/Documents/Aim_2/homo_sapiens_neutrophil/Control_1_split_alignments/sorted_Control_1_filtered_alignments_${i}.bed \
#     --format bed -o ../BCP_analysis/results_H3K36me3_replicate_2_chromosome_${i}_0.05_pval \
#     --verbose --pval 0.05
    
    

# done