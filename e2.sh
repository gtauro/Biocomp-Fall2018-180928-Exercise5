# usage bash e2.sh wages.csv
# To be used to return gender (-f 1), yearsExperience (-f 2), and wage (-f 4) for top and bottom earners by wage
# Also returns number of "females" in top 10 earners by wage

list=$(cat "$1" | grep -v "gender" | cut -d , -f 1,2,4 | sort -nr -t , -k 3)

# Outputs top earner

echo "The top earner had the following gender, years of experience, and wage:"
echo "$list" | head -n 1

# Outputs bottom earner

echo -e "\nThe bottom earner had the following gender, years of experience, and wage:"
echo "$list" | tail -n 1

# Lists the number of females in the top 10 earners
f=$(echo "$list" | head -n 10 | grep "female" | wc -l)

if [ $f -eq 1 ]
then
echo -e "\nThere was $f female in the top 10 earners by wage."
else
echo -e "\nThere were $f females in the top 10 earners by wage."
fi
