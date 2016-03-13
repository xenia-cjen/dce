#!/bin/sh 

rm output/* 
cd ./lout-3.24/ && make clean && make && cd ..
./runme_small.sh 
./runme_large.sh 

rm *.ld *.li
