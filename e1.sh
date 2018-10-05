# usage: bash e1.sh wages.csv
# to be used to sort wages.csv by only gender and years experience, ignores and discards other fields

cat $1 | grep -v "gender" | cut -d , -f 1,2 | sed 's/,/ /g' | sort -k1,1 -k2n | uniq > genderpairings.txt


