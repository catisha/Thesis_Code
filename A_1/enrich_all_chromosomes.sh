#!/bin/bash
#SBATCH -p batch
#SBATCH -N 1
#SBATCH -n 8
#SBATCH --time=20:00:00
#SBATCH --mem=500MB

# Notification configuration
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END                                        
#SBATCH --mail-type=FAIL 
#SBATCH --mail-type=ARRAY_TASKS 
#SBATCH --mail-user=catisha.coburn@adelaide.edu.au     

#SBATCH --array=0-24 #result of `ls *.fa | wc -l' less one.

module load R

# Get the data
cd /fast/users/a1667810/homo_sapiens_neutrophil/


FILES=()
CHR=()

for i in $(seq 1 22) X Y M; do
        echo $i
        FILES+=(my_H3K36me3.1000bp_$i)
	CHR+=($i)
done


echo "${FILES[*]}"

Rscript --vanilla /fast/users/a1667810/homo_sapiens_neutrophil/enrich_mycounts_allchromosomes_human_neutrophil_phoenix.R \
	--data ${FILES[$SLURM_ARRAY_TASK_ID]}\
	-c ${CHR[$SLURM_ARRAY_TASK_ID]}\
	-o /fast/users/a1667810/homo_sapiens_neutrophil\
	> /fast/users/a1667810/homo_sapiens_neutrophil/results_enrich_${CHR[$SLURM_ARRAY_TASK_ID]}.out

