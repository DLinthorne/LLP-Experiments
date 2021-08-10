#!/bin/bash

cd /Users/dylanlinthorne/pythia8245/examples/

#./MG5_aMC_v2_6_0/bin/mg5_aMC <<EOF
## import model and generate events
#import model Dm_s
#generate p p > xd xd~ 
#output data/Script
#EOF

# minimum/maximum parameter values
mypi=$(echo "3.14159265" | bc)
step=$(echo "1" | bc)
pi_min=$(echo "1" | bc)

#z_max=$(echo "15.0" | bc )
M_max=$(echo "20" | bc)
n_kevents=$(echo "1" | bc)

# Launch the multirun stage
for((i=0;i < $M_max; i++))
do
pi_mass=$(echo "($pi_min)+($step)*($i)" | bc)
rho_mass=$(echo "($pi_mass)*4" | bc)
q_mass=$(echo "($pi_mass)*2" | bc)
lambda=$(echo "($q_mass)" | bc)
ptmin=$(echo "($lambda)*1.1" | bc)

#echo $pi_mass

# Set hidden valley spectrum and scales
sed -i.bu  's/.*4900111:m0.*/4900111:m0 = '$pi_mass'/'  ModA.dat
sed -i.bu 's/.*4900211:m0.*/4900211:m0 = '$pi_mass'/'  ModA.dat
sed -i.bu 's/.*4900113:m0.*/4900113:m0 = '$rho_mass'/'  ModA.dat
sed -i.bu 's/.*4900213:m0.*/4900213:m0 = '$rho_mass'/'  ModA.dat
sed -i.bu 's/.*4900101:m0.*/4900101:m0 = '$q_mass'/'  ModA.dat

sed -i.bu 's/.*HiddenValley:Lambda.*/HiddenValley:Lambda = '$lambda'/'  ModA.dat
sed -i.bu 's/.*HiddenValley:pTminFSR.*/HiddenValley:pTminFSR = '$ptmin'/'  ModA.dat

# Set file names in Pythia script and remake
sed -i.bu 's/.*Outputfile.open.*/  Outputfile.open("map_'$pi_mass'_'$n_kevents'k.dat");/'  EJListOut.cc
sed '25q;d' EJListOut.cc

make EJListOut
./EJListOut 

done 
