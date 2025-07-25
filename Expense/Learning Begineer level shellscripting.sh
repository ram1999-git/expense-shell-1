#!/bin/bash

#Write a script to print "Hello, World!".

echo "Hello, World!"

#Write a script that takes a name as input and greets the user.

Name=Ram

echo "Hi $Name, How are You?"

#Create a script to add two numbers passed as command-line arguments.

Person1=$1
Person2=$2

echo "Hi $Person1, How are you"
echo "Hey hai $Person2, Yeah i'm good wha about you"
echo "Everything going good $person2" 

#Write a script to check if a file exists.
R="\e[31m"
G="\e[32m"
 read -p echo "Enter the file name : " filename
 if [ -f "$filename" ]; then
 echo -e "$G yes '$filename' is there"
 else
 echo -e "$R No '$filename' was not there"
 fi

#Write a script to check if a number is even or odd.
for i in {1..20}
do 
if [ $((i % 2)) -eq 0]
then
echo "$i is even"
else 
echo "$i is odd"
done

#Write a script that takes a filename and displays the number of lines, words, and characters.
R="\e[31m"
G="\e[32m"
 read -p echo "Enter the file name : " filename
 if [ -f '$filename' ]; then
 echo -e "$G yes '$filename' is there"
  lines=$(wc -l < "$filename")
 words=$(wc -w < "$filename")
 characters=$(wc -m < "$filename")

 echo "lines" : $lines
 echo "Words" : $words
 echo "Characters" :$Characters
 else
 echo -e "$R No '$filename' was not there"
 fi

v 

Write a script to loop through numbers from 1 to 10 and print them.
for i in {1...11}
do 
echo $i
done

Write a script that creates a backup of a given directory.



Write a script to count number of files in a directory.


Write a script to find the factorial of a number.