#Question 2.4

#First ask user the required salary questions, and if they are a manager
read -p  "Please enter your starting salary:" startingSalary
read -p  "Please enter how many years you wish to show your salary scale for:" points
read -p  "Please enter the salary increment that you expect:" increment
read -p "Are you a manager (Y/N):" manager

#If the user is a manager, they will receive 2 pay rises per year
if [[ "$manager" = "Y" || "$manager" = "y" ]]; then
	for ((i=0; i<=($points * 2); i++))
	do
		yearDecimal=$(echo "scale=1; $i/2" | bc) #Calaculate the year value for each increment and store as a decimal (i.e 0, 0.5, 1.5 ....).
		salaryIncrement=$(($startingSalary + ($i * $increment))) #Calculate the salary at each increment.
		echo "year: $yearDecimal ------ Salary: " $salaryIncrement  #Print the year and corresponding salary value.
	done
elif [[ "$manager" = "N" || "$manager" = "n" ]]; then #if user is regular employee, there will only be 1 raise per year
	for ((i=0; i<=points; i++))
	do
		salaryIncrement=$(($startingSalary + ($i * $increment))) #Calculate the salary at each increment and store in salaryIncrement variable
		echo "year: $i ------ Salary: " $salaryIncrement #Print year and corresponding salary value
	done
else
	echo "Please enter 'Y', 'y', 'N', or 'n'" #If user inputs anything other than y/n, instruct them to input the correct command.
fi



	

