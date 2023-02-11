#!/bin/bash
path=$1
buildsToRetain=$2
extension=$3
totalFiles=`ls $path/*.$extension -lrt | awk 'NR>1 {print $NF}' |wc -l`
countForDeletion=`expr $totalFiles - $buildsToRetain`
ls $path/*.$extension -lrt | awk 'NR>1 {print $NF}' | head -$countForDeletion | xargs rm -rf
ls $path/*.$extension -l 

