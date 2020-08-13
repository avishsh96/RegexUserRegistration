#!/bin/bash -x
echo "Welcome to User Registration with regex"
#PATTERNS

firstNamePattern='(^[[:upper:]][[:alpha:]]{2,14}$)'
lastNamePattern='(^[[:upper:]][[:alpha:]]{2,14}$)'
emailPattern="^([A-Za-z]+(\-|\.|\_|\+)?[A-Za-z0-9]*\+?((\.|\-|\_)?[A-Za-z]+[A-Za-z0-9]*)*)@(([A-Za-z0-9]+)+((\.|\-|\_)?([A-Za-z0-9]+)+)*)+\.([A-Za-z]{2,})+$"
mobilePattern="^[[:digit:]]{2}[[:space:]][[:digit:]]{10}$"



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

#Mobile Number

flagMobile=1
function mobile(){
while(( $flagMobile != 0 ))
do
read -p "Enter Mobile Number " mobile
if [[ $mobile =~ $mobilePattern ]]
then
        echo "$mobile"
        flagMobile=0
else
        echo "Mobile Number is incorrect should have country code followed by space then 10 digit mobile number"
fi
done
}

#Password

flagPwd=1
function password(){
while(( $flagPwd != 0 ))
do
read -p "Enter Password " pwd
if [[ ${#pwd} -ge 8 && "$pwd" == *[[:upper:]]* && "$pwd" == *[[:lower:]]* && "$pwd" == *[0-9]* && "$pwd" == *[[:punct:]]* ]]
then
        echo "$pwd"
        flagPwd=0
else
        echo "Password is incorrect minimum 8 characters,1upper,1Numeric,1Special Character"
fi
done
}


firstName
lastName
email
mobile
password
echo "User registration Done"

