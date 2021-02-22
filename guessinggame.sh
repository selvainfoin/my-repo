#!/usr/bin/bash

#Get Number of Files
num_of_files=$(ls | wc -l)

#function to get the response from user
function fn_guess 
{
echo "Guess the total number of files in the folder"
read response
re='^[0-9]+$'
if ! [[ $response =~ $re ]]; then
	echo "You Guessed an Invalid Number, please enter valid number"
	good_number=0
	fn_guess
else	
	good_number=1
fi	
}


#Call function to get the user response
fn_guess
#While function to check response
while [[ $response > 0 && $good_number=1 && $response -ne $num_of_files ]]
do
	#If function to validate	
	if [[ $response -gt $num_of_files && $good_number=1 ]]
		then
		echo "The guess is too High - Your previous Entered response $response"
		else [[ $response -lt $num_of_files && $good_number=1 ]]
		echo "The Guess is too Low - Your Previous Entered response $response"
	fi
echo "Re-Guess the correct number of files"


#Call function again if the guessed input is not correct
fn_guess
done
echo "Well Done!!! you guessed correct the correct number of files"

