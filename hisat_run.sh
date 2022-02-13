#!/bin/sh

echo "Left sample name:" 
read sample1
echo "Right sample name:"
read sample2
echo "Output directory:"
read sample_d

mkdir $sample_d

hisatgenotype --base hla --keep-alignment --locus-list A,B,C,DPA1,DPB1,DQA1,DQB1,DRB1,DRB3,DRB4,DRB5 -z /Volumes/Extreme/hisatgenotype/indicies -1 test_data/$sample1 -2 test_data/$sample2 --verbose 3 --pp 4 --out-dir $sample_d