#!/bin/bash

#fetches information from address, decompress information
curl -s -o lab3-bundle.tar.gz https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz
tar -xzf lab3-bundle.tar.gz

# tr used to remove spaces
cat lab3_data.tsv | tr -s '\n' > cleaned_lab3_data.tsv

#used to translate from tab to ,
tr '\t' ',' < cleaned_lab3_data.tsv > lab3_data.csv

#loop that counts lines in file
line_counter=0
while read -r line; do
  line_counter=$(( line_counter + 1 ))
done < <(tail -n +2 lab3_data.csv) 

echo "There are $line_counter lines in the file"

#creates tarball containing cleaned csv file
tar -czvf converted-archive.tar.gz lab3_data.csv


