#!/bin/bash




    cd ~/Documents/Aim_2/homo_sapiens_neutrophil/THOR_analysis
    

    rgt-THOR H3K36me3_THOR.config --name THOR_results  

    split-THOR.sh  THOR_results-diffpeaks.bed


