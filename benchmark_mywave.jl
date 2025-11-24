#!/usr/bin/env -S julia --color=yes --startup-file=no
# Helper script to run the GEMM benchmark; modded for wave benchmarking

include("wave.jl")
@info "Running benchmark for wave simulation"
benchmark_wave(my_simulate_wave)