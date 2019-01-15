#!/bin/bash

# run a series of lca fittings based on simulated data with varying parameters

OUTPUT=$PWD

echo $OUTPUT



#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_131218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9"           
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_131218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1"           
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_131218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5"           
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_131218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1"
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_131218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3"
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_131218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5"

    for p in 5; do
        for d in 0.5; do
            for s in 1; do
                    for prop in  0.5 ; do

                    PROGRAMS=$p
                    DELTA=$d
                    SIGMA=$s
                    PROPORTION=$prop

                    # echo "Creating record file ${OUTPUT}/record_sim_LCA_R_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt"
                    #     if [ -f ${OUTPUT}/3models_record_sim_LCA_R_18_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt ]; then
                    #         rm ${OUTPUT}/3models_record_sim_LCA_R_18_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
                    #         touch ${OUTPUT}/3models_record_sim_LCA_R_18_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt

                    #     else 
                    #         touch ${OUTPUT}/3models_record_sim_LCA_R_18_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
                    #     fi			

                    # echo "Running R script for ${PROGRAMS}, ${DELTA}, ${SIGMA}, ${PROPORTION}"
                    # Rscript LCA_sim_with_lca_record_commandline_conLoad_pcoef_oneclass.R programs ${PROGRAMS} delta \
                    #                 ${DELTA} sigma.z ${SIGMA} proportion ${PROPORTION} \
                    #                 out ${OUTPUT} >>  ${OUTPUT}/3models_record_sim_LCA_R_18_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt 2>&1 &

                    echo "Creating record file ${OUTPUT}/record_sim_LCA_R_contThresh_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt"
                        if [ -f ${OUTPUT}/3models_record_low_threshold_n0.5_contThresh_sim_LCA_R_10_1_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt ]; then
                            rm ${OUTPUT}/3models_record_low_threshold_n0.5_contThresh_sim_LCA_R_10_1_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
                            touch ${OUTPUT}/3models_record_low_threshold_n0.5_contThresh_sim_LCA_R_10_1_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt

                        else 
                            touch ${OUTPUT}/3models_record_low_threshold_n0.5_contThresh_sim_LCA_R_10_1_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
                        fi			

                    echo "Running R script for ${PROGRAMS}, ${DELTA}, ${SIGMA}, ${PROPORTION}"
                    Rscript LCA_sim_with_lca_record_contThresh_commandline_conLoad_pcoef.R programs ${PROGRAMS} delta \
                                    ${DELTA} sigma.z ${SIGMA} proportion ${PROPORTION} \
                                    out ${OUTPUT} >>  ${OUTPUT}/3models_record_low_threshold_n0.5_contThresh_sim_LCA_R_10_1_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt 2>&1 &                                    

                done    
                wait
            done
        
        done
    done                                    
# for i in $(seq 1 5); do 

# PARAM=($(sed -n "${i}p" < $OUTPUT/param_pcoef.txt))              


#                     PROGRAMS=${PARAM[0]}
#                     DELTA=${PARAM[1]}
#                     SIGMA=${PARAM[2]}
#                     PROPORTION=${PARAM[3]}

#                     echo "Creating record file ${OUTPUT}/record_sim_LCA_R_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt"
#                         if [ -f ${OUTPUT}/3models_record_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt ]; then
#                             rm ${OUTPUT}/3models_record_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
#                             touch ${OUTPUT}/3models_record_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt

#                         else 
#                             touch ${OUTPUT}/3models_record_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
#                         fi			

#                     echo "Running R script for ${PROGRAMS}, ${DELTA}, ${SIGMA}, ${PROPORTION}"
#                     Rscript LCA_sim_with_lca_record_commandline_conLoad_pcoef.R programs ${PROGRAMS} delta \
#                                     ${DELTA} sigma.z ${SIGMA} proportion ${PROPORTION} \
#                                     out ${OUTPUT} >>  ${OUTPUT}/3models_record_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt 2>&1 &
# done 
# wait 

# for i in $(seq 7 16); do


# PARAM=($(sed -n "${i}p" < $OUTPUT/param_pcoef.txt))              


#                     PROGRAMS=${PARAM[0]}
#                     DELTA=${PARAM[1]}
#                     SIGMA=${PARAM[2]}
#                     PROPORTION=${PARAM[3]}

#                 echo "Creating record file ${OUTPUT}/record_sim_LCA_R_contThresh_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt"
#                         if [ -f ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt ]; then
#                             rm ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
#                             touch ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt

#                         else 
#                             touch ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
#                         fi			

#                     echo "Running R script for ${PROGRAMS}, ${DELTA}, ${SIGMA}, ${PROPORTION}"
#                     Rscript LCA_sim_with_lca_record_contThresh_commandline_conLoad_pcoef.R programs ${PROGRAMS} delta \
#                                     ${DELTA} sigma.z ${SIGMA} proportion ${PROPORTION} \
#                                     out ${OUTPUT} >>  ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt 2>&1 &

# done
# wait



#    PARAM=(7 1.5 2 0.9) 

#                     PROGRAMS=${PARAM[0]}
#                     DELTA=${PARAM[1]}
#                     SIGMA=${PARAM[2]}
#                     PROPORTION=${PARAM[3]}

#     echo "Creating record file ${OUTPUT}/record_sim_LCA_R_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt"
#                         if [ -f ${OUTPUT}/3models_record_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt ]; then
#                             rm ${OUTPUT}/3models_record_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
#                             touch ${OUTPUT}/3models_record_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt

#                         else 
#                             touch ${OUTPUT}/3models_record_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
#                         fi			

#                     echo "Running R script for ${PROGRAMS}, ${DELTA}, ${SIGMA}, ${PROPORTION}"
#                     Rscript LCA_sim_with_lca_record_commandline_conLoad_pcoef.R programs ${PROGRAMS} delta \
#                                     ${DELTA} sigma.z ${SIGMA} proportion ${PROPORTION} \
#                                     out ${OUTPUT} >>  ${OUTPUT}/3models_record_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt 2>&1 &


    # for p in 5; do
    #     for d in 0.5; do
    #         for s in 4; do
    #                 for prop in 0.1 0.3 0.7;  do

    #                 PROGRAMS=$p
    #                 DELTA=$d
    #                 SIGMA=$s
    #                 PROPORTION=$prop

    #                 echo "Creating record file ${OUTPUT}/record_sim_LCA_R_contThresh_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt"
    #                     if [ -f ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt ]; then
    #                         rm ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
    #                         touch ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt

    #                     else 
    #                         touch ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
    #                     fi			

    #                 echo "Running R script for ${PROGRAMS}, ${DELTA}, ${SIGMA}, ${PROPORTION}"
    #                 Rscript LCA_sim_with_lca_record_contThresh_commandline_conLoad_pcoef.R programs ${PROGRAMS} delta \
    #                                 ${DELTA} sigma.z ${SIGMA} proportion ${PROPORTION} \
    #                                 out ${OUTPUT} >>  ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt 2>&1 &

    #             done    
    #             wait
    #         done
        
    #     done
    # done                           

    # for p in 5; do
    #     for d in 1.5; do
    #         for s in 4; do
    #                 for prop in 0.1 0.5 0.7;  do

    #                 PROGRAMS=$p
    #                 DELTA=$d
    #                 SIGMA=$s
    #                 PROPORTION=$prop

    #                 echo "Creating record file ${OUTPUT}/record_sim_LCA_R_contThresh_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt"
    #                     if [ -f ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt ]; then
    #                         rm ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
    #                         touch ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt

    #                     else 
    #                         touch ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
    #                     fi			

    #                 echo "Running R script for ${PROGRAMS}, ${DELTA}, ${SIGMA}, ${PROPORTION}"
    #                 Rscript LCA_sim_with_lca_record_contThresh_commandline_conLoad_pcoef.R programs ${PROGRAMS} delta \
    #                                 ${DELTA} sigma.z ${SIGMA} proportion ${PROPORTION} \
    #                                 out ${OUTPUT} >>  ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt 2>&1 &

    #             done    
    #             wait
    #         done
        
    #     done
    # done     
                     

    # for p in 5 7; do
    #     for d in 0.5 1.5; do
    #         for s in 0 0.5 1 2 4; do
    #                 for prop in 0.1 0.3 0.5 0.7 0.9;  do

    #                 PROGRAMS=$p
    #                 DELTA=$d
    #                 SIGMA=$s
    #                 PROPORTION=$prop

                    # echo "Creating record file ${OUTPUT}/record_sim_LCA_R_contThresh_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt"
                    #     if [ -f ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt ]; then
                    #         rm ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
                    #         touch ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt

                    #     else 
                    #         touch ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
                    #     fi			

                    # echo "Running R script for ${PROGRAMS}, ${DELTA}, ${SIGMA}, ${PROPORTION}"
                    # Rscript LCA_sim_with_lca_record_contThresh_commandline_conLoad_pcoef.R programs ${PROGRAMS} delta \
                    #                 ${DELTA} sigma.z ${SIGMA} proportion ${PROPORTION} \
                    #                 out ${OUTPUT} >>  ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt 2>&1 &

    #             done    
    #             wait
    #         done
        
    #     done
    # done   


#    PARAM=(5 1.5 2 0.1) 

#                     PROGRAMS=${PARAM[0]}
#                     DELTA=${PARAM[1]}
#                     SIGMA=${PARAM[2]}
#                     PROPORTION=${PARAM[3]}


#                     echo "Creating record file ${OUTPUT}/record_sim_LCA_R_contThresh_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt"
#                         if [ -f ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt ]; then
#                             rm ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
#                             touch ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt

#                         else 
#                             touch ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
#                         fi			

#                     echo "Running R script for ${PROGRAMS}, ${DELTA}, ${SIGMA}, ${PROPORTION}"
#                     Rscript LCA_sim_with_lca_record_contThresh_commandline_conLoad_pcoef.R programs ${PROGRAMS} delta \
#                                     ${DELTA} sigma.z ${SIGMA} proportion ${PROPORTION} \
#                                     out ${OUTPUT} >>  ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt 2>&1 &

#  PARAM=(7 1.5 1 0.3) 

#                     PROGRAMS=${PARAM[0]}
#                     DELTA=${PARAM[1]}
#                     SIGMA=${PARAM[2]}
#                     PROPORTION=${PARAM[3]}


#                     echo "Creating record file ${OUTPUT}/record_sim_LCA_R_contThresh_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt"
#                         if [ -f ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt ]; then
#                             rm ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
#                             touch ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt

#                         else 
#                             touch ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
#                         fi			

#                     echo "Running R script for ${PROGRAMS}, ${DELTA}, ${SIGMA}, ${PROPORTION}"
#                     Rscript LCA_sim_with_lca_record_contThresh_commandline_conLoad_pcoef.R programs ${PROGRAMS} delta \
#                                     ${DELTA} sigma.z ${SIGMA} proportion ${PROPORTION} \
#                                     out ${OUTPUT} >>  ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt 2>&1 &

#  PARAM=(7 1.5 4 0.1) 

#                     PROGRAMS=${PARAM[0]}
#                     DELTA=${PARAM[1]}
#                     SIGMA=${PARAM[2]}
#                     PROPORTION=${PARAM[3]}


#                     echo "Creating record file ${OUTPUT}/record_sim_LCA_R_contThresh_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt"
#                         if [ -f ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt ]; then
#                             rm ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
#                             touch ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt

#                         else 
#                             touch ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
#                         fi			

#                     echo "Running R script for ${PROGRAMS}, ${DELTA}, ${SIGMA}, ${PROPORTION}"
#                     Rscript LCA_sim_with_lca_record_contThresh_commandline_conLoad_pcoef.R programs ${PROGRAMS} delta \
#                                     ${DELTA} sigma.z ${SIGMA} proportion ${PROPORTION} \
#                                     out ${OUTPUT} >>  ${OUTPUT}/3models_record_contThresh_sim_LCA_R_17_12_18_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt 2>&1 &
