echo "Please enter your starting salary:"
read startingSalary
echo "Please enter how many years you wish to show your salary scale for:"
read points
echo "Please enter the salary increment that you expect:"
read increment
read -p "Are you a manager (Y/N):" manager


if [[ "$manager" = "Y" || "$manager" = "y" ]]; then
	echo "IncsPerYear = 2"
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



	

