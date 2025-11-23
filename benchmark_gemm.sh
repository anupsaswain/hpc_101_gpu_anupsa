#!/bin/bash

#SBATCH --job-name=benchmark_gemm
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=16G
#SBATCH --time=50
#SBATCH --account=venkvis
#SBATCH --partition=venkvis-a100
#SBATCH --gres=gpu:1
#SBATCH --output=./%j_benchmark_gemm.txt

module load julia
julia --project -e "using Pkg; Pkg.instantiate()"
julia --project benchmark_gemm.jl $1