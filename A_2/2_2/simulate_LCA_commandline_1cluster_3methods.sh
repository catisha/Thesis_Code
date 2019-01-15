#!/bin/bash

# run a series of lca fittings based on simulated data with varying parameters

OUTPUT=$PWD

echo $OUTPUT




    for p in 5 7; do
            for s in 0 0.5 1 2 4; do
                    for prop in 0.1 0.3 0.5 0.7 0.9; do

                    PROGRAMS=$p
                    SIGMA=$s
                    PROPORTION=$prop

                    echo "Creating record file ${OUTPUT}/record_sim_LCA_R_${PROGRAMS}_${SIGMA}_${PROPORTION}.txt"
                        if [ -f ${OUTPUT}/noclusters_record_sim_LCA_R_22_12_18${PROGRAMS}_${SIGMA}_${PROPORTION}.txt ]; then
                            rm ${OUTPUT}/noclusters_record_sim_LCA_R_22_12_18${PROGRAMS}_${SIGMA}_${PROPORTION}.txt
                            touch ${OUTPUT}/noclusters_record_sim_LCA_R_22_12_18${PROGRAMS}_${SIGMA}_${PROPORTION}.txt

                        else 
                            touch ${OUTPUT}/noclusters_record_sim_LCA_R_22_12_18${PROGRAMS}_${SIGMA}_${PROPORTION}.txt
                        fi			

                    echo "Running R script for ${PROGRAMS}, ${SIGMA}, ${PROPORTION}"
                    Rscript noclusters_LCA_test_commandline_conLoad_pcoef.R programs ${PROGRAMS} sigma.z ${SIGMA} proportion ${PROPORTION} \
                                    out ${OUTPUT} >>  ${OUTPUT}/noclusters_record_sim_LCA_R_22_12_18${PROGRAMS}_${SIGMA}_${PROPORTION}.txt 2>&1 &

                    echo "Creating record file ${OUTPUT}/record_sim_LCA_R_contThresh_${PROGRAMS}_${SIGMA}_${PROPORTION}.txt"
                        if [ -f ${OUTPUT}/noclusters_record_contThresh_sim_LCA_R_22_12_18${PROGRAMS}_${SIGMA}_${PROPORTION}.txt ]; then
                            rm ${OUTPUT}/noclusters_record_contThresh_sim_LCA_R_22_12_18${PROGRAMS}_${SIGMA}_${PROPORTION}.txt
                            touch ${OUTPUT}/noclusters_record_contThresh_sim_LCA_R_22_12_18${PROGRAMS}_${SIGMA}_${PROPORTION}.txt

                        else 
                            touch ${OUTPUT}/noclusters_record_contThresh_sim_LCA_R_22_12_18${PROGRAMS}_${SIGMA}_${PROPORTION}.txt
                        fi			

                    echo "Running R script for ${PROGRAMS}, ${SIGMA}, ${PROPORTION}"
                    Rscript noclusters_LCA_test_commandline_conthresh_conLoad_pcoef.R programs ${PROGRAMS} sigma.z ${SIGMA} proportion ${PROPORTION} \
                                    out ${OUTPUT} >>  ${OUTPUT}/noclusters_record_contThresh_sim_LCA_R_22_12_18_${PROGRAMS}_${SIGMA}_${PROPORTION}.txt 2>&1 &                                    

                done    
                wait
            done
        
    done                                    
