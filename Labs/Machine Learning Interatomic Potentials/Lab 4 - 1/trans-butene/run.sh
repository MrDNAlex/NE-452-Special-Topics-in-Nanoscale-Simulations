#!/bin/bash
#SBATCH --job-name=trans_test
#SBATCH --time=24:00:00
#SBATCH --ntasks=4
#SBATCH --mem-per-cpu=2000
#SBATCH --output=orca_test-%j.out

# Load ORCA module (check what's available with: module avail orca)
module load orca/6.0.0

# Run ORCA
$(which orca) trans.inp > trans.out
