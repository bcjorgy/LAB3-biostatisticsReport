# Awk program will read values from the 3rd column and calculate the sum and average age. 
# The program will read values from the 4th column and calculate the sum and average height.
# The program will read values from the fifth column and calculate the sum and average weight
# Author: Lata Jorge

#Ignoring the header line of the csv file and changing the field separator
BEGIN {FS = ","
	ave1 = 0; ave2 = 0; ave3 = 0
	SumAge = 0;
	SumHeight = 0;
	SumWeight = 0;
	}

{
if(NR != 1)
	{
	SumAge += $3; SumHeight += $4; SumWeight += $5
	}
} 


END {ave1 = SumAge/NR; ave2 = SumHeight/NR; ave3 = SumWeight/NR; print "average age=" ave1 "\t" "average height(in)=" ave2 "\t" "average weight=" ave3 }
