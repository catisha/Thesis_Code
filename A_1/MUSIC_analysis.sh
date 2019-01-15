#!/bin/bash


cd ~/Documents/Aim_2/homo_sapiens_neutrophil/MUSIC_analysis

# Set up the control files

 echo "Making directory Control"
 mkdir Control

    echo "Preprocessing  control reads for replicate 1"
    ~/bin/MUSIC-master/bin/MUSIC -preprocess "BED6" \
    ~/Documents/Aim_2/homo_sapiens_neutrophil/Control_1_filtered_alignments.bed\
    Control

    echo "Preprocessing  control reads for replicate 1"
    ~/bin/MUSIC-master/bin/MUSIC -preprocess "BED6" \
    ~/Documents/Aim_2/homo_sapiens_neutrophil/Control_2_filtered_alignments.bed\
    Control


    echo "Making directories for sorted and deduplicating in Control"
    mkdir Control/sorted
    mkdir Control/dedup

    echo "Sort reads for control reads and put them in sorted directory"
    ~/bin/MUSIC-master/bin/MUSIC -sort_reads \
    Control \
    Control/sorted 

    echo "Deduplicate reads for control reads chrom ${i} and put them in dedup directory"
    ~/bin/MUSIC-master/bin/MUSIC -remove_duplicates \
    Control/sorted 2 Control/dedup 

	
    echo "Making directory Sample"
    mkdir H3K36me3

    echo "Preprocess reads for sample 1"
    ~/bin/MUSIC-master/bin/MUSIC -preprocess "BED6" \
    ~/Documents/Aim_2/homo_sapiens_neutrophil/H3K36me3_1_filtered_alignments.bed \
    H3K36me3

    echo "Preprocess reads for sample 2"
    ~/bin/MUSIC-master/bin/MUSIC -preprocess "BED6" \
    ~/Documents/Aim_2/homo_sapiens_neutrophil/H3K36me3_2_filtered_alignments.bed \
    H3K36me3

    echo "Making sorted and deduplicated directories"
    mkdir H3K36me3/sorted
    mkdir H3K36me3/dedup

    echo "Sort reads"
    ~/bin/MUSIC-master/bin/MUSIC -sort_reads \
    H3K36me3 \
    H3K36me3/sorted 

    echo "Remove duplicates"
    ~/bin/MUSIC-master/bin/MUSIC -remove_duplicates \
    H3K36me3/sorted 2 H3K36me3/dedup 


    echo "Finally, get enriched regions"
    ~/bin/MUSIC-master/bin/MUSIC -get_multiscale_broad_ERs \
    -chip H3K36me3/dedup \
    -control Control/dedup \
    -mapp Mappability_hg19/hg19_36bp -l_mapp 36 

    cp ERs_1000.0_16000.0_1.50_1750_4.0.bed default_ERs_MUSIC.bed
    rm ERs_1000.0_16000.0_1.50_1750_4.0.bed  

# Not used
    # echo "Finally, get enriched regions"
    # ~/bin/MUSIC-master/bin/MUSIC -get_multiscale_broad_ERs \
    # -chip H3K36me3/dedup \
    # -control Control/dedup \
    # -mapp Mappability_hg19/hg19_36bp -l_mapp 36 -qval 1

    # cp ERs_1000.0_16000.0_1.50_1750_4.0.bed qval_1_ERs_MUSIC.bed
    # rm ERs_1000.0_16000.0_1.50_1750_4.0.bed  

    # echo "Done"


