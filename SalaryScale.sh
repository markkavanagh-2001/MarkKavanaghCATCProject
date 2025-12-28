echo "Please enter your starting salary:"
read startingSalary
echo "Please enter how many years you wish to show your salary scale for:"
read points
echo "Please enter the salary increment that you expect:"
read increment

for ((i=1; i<=points; i++))
do
	echo "year $i:" $(( $startingSalary + ($i * $increment)))
done

	

