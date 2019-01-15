#!/bin/bash

cd ~/Documents/Aim_2/homo_sapiens_neutrophil/HOMER_analysis

makeTagDirectory tag_dir_H3K36me3/ ../H3K36me3_1_filtered_alignments.bed \
../H3K36me3_2_filtered_alignments.bed -forceBED -format bed

makeTagDirectory tag_dir_Control/ ../Control_1_filtered_alignments.bed \
../Control_2_filtered_alignments.bed -forceBED -format bed


findPeaks tag_dir_H3K36me3 -style histone -o H3K36me3_homer_results -i tag_dir_Control



# NOT USED
# findPeaks tag_dir_H3K36me3 -style histone -o H3K36me3_homer_results_all_peaks_poisson -i tag_dir_Control -poisson 1 -F 0
# loadGenome.pl -name hg38_Custom -org human -fasta Homo_sapiens.GRCh38.dna.toplevel.fa -gtf Homo_sapiens.GRCh38.92.gtf
# annotatePeaks.pl T0_peaks.txt hg38 -raw -gtf ../../genome/Homo_sapiens.GrCh38.92 > anno_output.txt
# getDiffExpression.pl anno_output.txt bac thirty thirty > diffOutput.txt
# findPeaks 
#`mergePeaks $files > \"$peakFile\"
#`annotatePeaks.pl \"$peakFile\" $genome -d $bgDirs $targetDirs -raw $annOptions $fragLength > \"$rawFile\"`;
#`getDiffExpression.pl \"$rawFile\" $bgStr $targetStr $norm2total $diffAlg -fdr $fdrThresh -log2fold $log2Thresh -export $rand > $diffFile`