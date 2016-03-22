#!/bin/sh 

./compile.sh
cd test 

rm output/* 
cd lout-3.24/ && make clean && make && cd ..
./runme_small.sh 
./runme_large.sh

rm *.ld *.li

if diff -I '^%%CreationDate:*' output/output_small.ps golden/output_small.ps; then 
    echo "Pass the small test!!" 
else 
    echo "Fail the small test, something's wrong with your work..."
fi 
if diff -I '^%%CreationDate:*' output/output_large.ps golden/output_large.ps; then  
    echo "Pass the large test!!" 
else 
    echo "Fail the large test, something's wrong with your work..."
fi 

cd ..
