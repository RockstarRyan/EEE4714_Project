#!/bin/bash

mkfifo matlab_i;
mkfifo matlab_o;

0>matlab_i;
matlab_o>1;