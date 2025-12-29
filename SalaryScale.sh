read -p  "Please enter your starting salary:" startingSalary
read -p  "Please enter how many years you wish to show your salary scale for:" points
read -p  "Please enter the salary increment that you expect:" increment
read -p "Are you a manager (Y/N):" manager

if [[ "$manager" = "Y" || "$manager" = "y" ]]; then
	echo "year: 0 " $startingSalary
	for ((i=1; i<=($points * 2); i++))
	do
		year=$(printf "%.2f" $($i/2))
		echo "year: $year"  $(( $startingSalary + ($i * $increment)))
	done
elif [[ "$manager" = "N" || "$manager" = "n" ]]; then
	echo "IncsPerYear = 1"
else
	echo "Please enter 'Y', 'y', 'N', or 'n'"
fi


echo "$IncsPerYear"

for ((i=0; i<=points; i++))
do
	echo "year $i:" $(( $startingSalary + ($i * $increment)))
done



	

