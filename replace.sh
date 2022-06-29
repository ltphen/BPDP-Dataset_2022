#!/bin/bash

# Run: ./replace.sh http://dbpedia.org/resource/Cornelis_Janssens_van_Ceulen http://dbpedia.org/resource/Cornelius_Johnson_(artist)

OLD=$1
NEW=$2

FILES=$(grep -rl "$1" BPDP_Dataset)
for FILE in $FILES
do
	sed "s/$OLD/$NEW/g" $FILE
done
