#!/bin/bash -x
echo "Welcome to User Registration with regex"
#PATTERNS

firstNamePattern='(^[[:upper:]][[:alpha:]]{2,14}$)'
lastNamePattern='(^[[:upper:]][[:alpha:]]{2,14}$)'


#FIRSTNAME

flagFirst=1

function firstName(){
while(( $flagFirst != 0 ))
do
read -p "Enter FirstName " first
if [[ $first =~ $firstNamePattern ]]
then
	echo "$first"
	flagFirst=0
else
	echo "Fist name should start with Capital letter and should have minimum 3 characters"
fi
done
}



#LASTNAME

flagLast=1
function lastName(){
while(( $flagLast != 0 ))
do
read -p "Enter LastName " last
if [[ $last =~ $lastNamePattern ]]
then
	echo "$last"
	flagLast=0
else
	echo "Last name should start with Capital letter and should have minimum 3 characters"
fi
done
}


firstName
lastName
echo "User registration Done"
