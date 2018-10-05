# usage: e3.sh wages.csv
# to be used to return the relative effect of college (-f 3, 12 yr vs 16 yr) on wage (-f 4), as per wages.csv

list=$(cat "$1" | cut -d , -f 3,4)
val1=$(echo "$list" | grep ^16 | cut -d , -f 2 | sort -n | head -n 1)
val2=$(echo "$list" | grep ^12 | cut -d , -f 2 | sort -n | head -n 1)

# to calculate and output values to std out

echo The relative effect of graduating college on minimum wage in the dataset is a value of:
echo "$val1 - $val2" | bc
