#!/bin/bash

input=`jq -r '.input' config.json`
ref=`jq -r '.ref' config.json`
cost=`jq -r '.cost' config.json`

# make output directory
mkdir -p out_dir

flirt -in ${input} -ref ${ref} -out out_dir/dwi.nii.gz
cp dwi.bvecs out_dir/dwi.bvecs
cp dwi.bvals out_dir/dwi.bvals
