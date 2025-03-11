#!/bin/bash

SCRIPT_PATH=$(dirname "$(realpath "$0")")
DATASET_PATH="$SCRIPT_PATH/../Dataset"
mkdir -p $DARASET_PATH
ls -l $DATASET_PATH

for file in "$DATASET_PATH/*.gz"; do
    gzip -d "$file"
done
