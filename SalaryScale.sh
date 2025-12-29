#Question 2.4

#First ask user the required salary questions, and if they are a manager
read -p  "Please enter your starting salary:" startingSalary
read -p  "Please enter how many years you wish to show your salary scale for:" points
read -p  "Please enter the salary increment that you expect:" increment
read -p "Are you a manager (Y/N):" manager

#If the user is a manager, they will receive 2 pay rises per year
if [[ "$manager" = "Y" || "$manager" = "y" ]]; then
	#There will now be double the number of points to plot. 
	for ((i=0; i<=($points * 2); i++)) #Calculate the salary for each point
	do
		yearDecimal=$(echo "scale=1; $i/2" | bc)
		salaryIncrement=$(($startingSalary + ($i * $increment)))
		echo "year: $yearDecimal ------ Salary: " $salaryIncrement  
	done
elif [[ "$manager" = "N" || "$manager" = "n" ]]; then
	for ((i=0; i<=points; i++))
	do
		salaryIncrement=$(($startingSalary + ($i * $increment)))
		echo "year: $i ------ Salary: " $salaryIncrement
	done
else
	echo "Please enter 'Y', 'y', 'N', or 'n'"
fi


#for ((i=0; i<=points; i++))
#do
#	echo "year $i:" $(( $startingSalary + ($i * $increment)))
#done



	

