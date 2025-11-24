# Homework 6 - GPU Programming

## Part 1: Benchmarking the performance of a GEMM kernel

1. Benchmark the performance of the kernel on an Artemis GPU node for the following values of N: 64, 1024 and 4096. Paste your SLURM output from running the code on Artemis below.

```
[ Info: Running benchmark for N = 64
[ Info: Wall time for run 1: 0.000278161 seconds
[ Info: Wall time for run 2: 5.5444e-5 seconds
[ Info: Wall time for run 3: 4.3972e-5 seconds
[ Info: Wall time for run 4: 4.781e-5 seconds
[ Info: Wall time for run 5: 4.0626e-5 seconds
[ Info: Average wall time: 9.32026e-5 seconds

[ Info: Running benchmark for N = 1024
[ Info: Wall time for run 1: 0.040112964 seconds
[ Info: Wall time for run 2: 0.038379606 seconds
[ Info: Wall time for run 3: 0.029846284 seconds
[ Info: Wall time for run 4: 0.01030942 seconds
[ Info: Wall time for run 5: 0.030135806 seconds
[ Info: Average wall time: 0.029756816 seconds

[ Info: Running benchmark for N = 4096
[ Info: Wall time for run 1: 0.181465217 seconds
[ Info: Wall time for run 2: 0.189336728 seconds
[ Info: Wall time for run 3: 0.191007289 seconds
[ Info: Wall time for run 4: 0.183768874 seconds
[ Info: Wall time for run 5: 0.18389983 seconds
[ Info: Average wall time: 0.1858955876 seconds
```

2. What GPU type did you use to run the code on Artemis.
3. Of the devices theoretical peak performance (FLOPS) how many flops per second  did you get? Report for each N. What is the trend with respect to N?

## Part 2: Benchmarking the performance of a wave simulation
1. Benchmark the performance of the wave simulation (`simulation_kernel!` in `wave.jl`) on a GPU on Artemis.

```
[ Info: Running benchmark for wave simulation
[ Info: Wave sim run 1: 0.008150625 seconds
[ Info: Wave sim run 2: 0.008061478 seconds
[ Info: Wave sim run 3: 0.00804657 seconds
[ Info: Wave sim run 4: 0.008049876 seconds
[ Info: Wave sim run 5: 0.008044677 seconds
[ Info: Average wave simulation time: 0.0080706452 seconds
```

## Part 3: Implementing a wave simulation kernel for GPUs
1. Complete the GPU kernel `simulation_kernel!` and benchmark it on Artemis.
    - Your kernel will be validated against the reference implementation and must match.
    - You may find `animate_wave` useful for visualizing the wave evolution and debugging any synchronize issues.
```
[ Info: Running benchmark for wave simulation
[ Info: Wave sim run 1: 0.010032932 seconds
[ Info: Wave sim run 2: 0.033512222 seconds
[ Info: Wave sim run 3: 0.030128832 seconds
[ Info: Wave sim run 4: 0.015955311 seconds
[ Info: Wave sim run 5: 0.026847543 seconds
[ Info: Average wave simulation time: 0.023295368 seconds
```
2. What was the speedup you got from using a single kernel launch vs. multiple kernel launches? Show your calculation of the speedup.
3. What is the largest simulation you can run on on Artemis in less than a minute?How did you find this?

## Part 4: What did you learn?
