#!/bin/bash

# Create a *.tps file from multiple *.tag files (landmark files from MINC)

for i in *.tag  
do
   spec_name=$i
   ID="ID=${spec_name}"
   sed -i -e '/Volumes = 1;/,+3d' $i
   sed -i '1s/^/LM3=249/' $i
   echo $ID >> $i
   echo "SCALE=1" >> $i
   echo "" >> $i
   sed -i 's/ 0.3 1 1 "curve_semilandmark"//g' $i
   sed -i 's/ 0.5 1 1 "Landmark"//g' $i
   sed -i 's/ 0.2 1 1 "curve_semilandmark"//g' $i
   sed -i 's/;//g' $i
   sed -i 's/.tag//g' $i
   sed -i 's/Points =//g' $i
   sed -i 's/Points =//g' $i
   sed "s/^[ \t]*//" -i $i
done

cat *.tag >> DATASET_landmarks.tps
