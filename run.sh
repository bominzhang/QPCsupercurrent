SBATCH -N 10  # number of nodes
SBATCH --ntask-per-node=40  # core per node
SBATCH -J generate-data2
SBATCH -t 10：00：00
SBATCH --output /ihome/sfrolov/boz15/Desktop/tmp.txt
SBATCH --partition h2p

source /ihome/sfrolov/boz15/.bashrc
# prepare environment
source activate /ihome/sfrolov/boz15/Desktop/QPCsupercurrent/env
# run script
ipcluster start -n 10 & python generate-data2.py


## submit job
# in terminal run
# sbatch run.sh

# test
# bash run.sh

## check status
# squeue -u youruserid

 
