#!/bin/bash
# n = number of keys + 1
n=5; args="../compute_results"; for i in $(seq 0 $n); do args+=" results_k$i"; done; echo $args | bash