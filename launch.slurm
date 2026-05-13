#!/bin/bash

#SBATCH -p l40s
#SBATCH -N 1
#SBATCH -n 96
#SBATCH --gres=gpu:L40S:1
#SBATCH --constraint=tl40s
#SBATCH --mem=253000
#SBATCH --time=00:30:00
#SBATCH --mail-user=hytang2@illinois.edu
#SBATCH --mail-type=BEGIN,FAIL,END

module purge
module load L40S

julia run_single.jl "$JOB_NAME"