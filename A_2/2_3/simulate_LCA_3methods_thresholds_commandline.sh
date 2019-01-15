#!/bin/bash
#SBATCH -p batch
#SBATCH -N 1
#SBATCH -n 8
#SBATCH --time=1-12:00
#SBATCH --mem=1GB

# Notification configuration
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END                                        
#SBATCH --mail-type=FAIL 
#SBATCH --mail-type=ARRAY_TASKS                                      
#SBATCH --mail-user=catisha.coburn@adelaide.edu.au     

#SBATCH --array=1,2,4,5 #result of `ls *.fa | wc -l' less one.


module load R

# run a series of lca fittings based on simulated data with varying parameters
#i=1
OUTPUT=$PWD

echo $OUTPUT

PARAM=($(sed -n "${SLURM_ARRAY_TASK_ID}p" < $OUTPUT/parameters_update.txt))              
#PARAM=($(sed -n "${i}p" < $OUTPUT/parameters.txt))

                    PROGRAMS=${PARAM[0]}
echo $PROGRAMS
                    DELTA=${PARAM[1]}
echo $DELTA
                    SIGMA=${PARAM[2]}
echo $SIGMA
                    PROPORTION=${PARAM[3]}
echo $PROPORTION

  echo "Creating record file ${OUTPUT}/161218_record_3methods_thresholds_3_LCA_R_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt"
     if [ -f ${OUTPUT}/161218_record_3methods_thresholds_3_LCA_R_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt ]; then
        rm ${OUTPUT}/161218_record_3methods_thresholds_3_LCA_R_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
        touch ${OUTPUT}/161218_record_3methods_thresholds_3_LCA_R_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt

      else 
  	 touch ${OUTPUT}/161218_record_3methods_thresholds_3_LCA_R_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt
       fi			

 echo "Running R script for ${PROGRAMS}, ${DELTA}, ${SIGMA}, ${PROPORTION}, ${CONSTANTLOADING}"
  Rscript LCA_sim_3_thresholds_commandline_20rep.R programs ${PROGRAMS} delta\
                     ${DELTA} sigma.z ${SIGMA} proportion ${PROPORTION} \
                    out ${OUTPUT} >>  ${OUTPUT}/161218_record_3methods_thresholds_3_LCA_R_${PROGRAMS}_${DELTA}_${SIGMA}_${PROPORTION}.txt 2>&1 
   
echo "DONE"        

