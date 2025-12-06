#!/bin/bash
# n = number of keys + 1, x = number of traces per key
# test="test4"; n=64; x=10000;
test="test5"; n=31; x=10; compute="../compute_results"; mkdir results_$test; rm results_$test/*; for i in $(seq 0 $n); do ./attack_wrapper -i $x -k $i -o results_$test/results_k$i -b -d ../../DPA_contest2_public_base_diff_vcc_a128_2009_12_23 -x ../../DPA_contest2_public_base_index_file reference_attack/attack_reference; compute+=" results_k$i"; done; cd results_$test; echo $compute | bash; echo "Test: $test;  Number of keys: $n;  Number of traces per key: $x" > readme.txt; cd ../;