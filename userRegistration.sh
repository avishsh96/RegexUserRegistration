#!/bin/bash -x
echo "Welcome to User Registration with regex"
#PATTERNS

firstNamePattern='(^[[:upper:]][[:alpha:]]{2,14}$)'
lastNamePattern='(^[[:upper:]][[:alpha:]]{2,14}$)'
emailPattern="^([A-Za-z]+(\-|\.|\_|\+)?[A-Za-z0-9]*\+?((\.|\-|\_)?[A-Za-z]+[A-Za-z0-9]*)*)@(([A-Za-z0-9]+)+((\.|\-|\_)?([A-Za-z0-9]+)+)*)+\.([A-Za-z]{2,})+$"

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

#EMAIL

flagEmail=1
function email(){
while(( $flagEmail != 0 ))
do
read -p "Enter Email " email
if [[ $email =~ $emailPattern ]]
then
	echo "$email"
	flagEmail=0
else
	echo "Email is incorrect should follow the pattern abc.xyz@bl.co.in"
fi
done
}


firstName
lastName
email
echo "User registration Done"

