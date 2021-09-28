#!/bin/bash
nf=`cat path_details.env | wc -l`
for((i=1;i<=$nf;++i))
do
    source_path=`head -$(($i)) path_details.env | tail -1 |awk -F ' ' '{print $1}'`
    destination_path=`head -$(($i)) path_details.env | tail -1 |awk -F ' ' '{print $2}'`

    if [[ $source_path != '' && $source_path != '/' ]]
    then
        echo "Valid Path"
    else
        echo "Invalid Path"
    fi
done

