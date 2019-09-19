#!/bin/bash
# Authors : Morgan Cluff
# Date: 9/19/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

#1
echo "Enter a file name: "
read file
echo "Enter a regular expression: "
read regx

#2
egrep $regx $file

#3 search for 3 digits, a dash, 3 digits, a dash, then 4 digits
egrep -c '[[:digit:]]{3}-[0-9]{3}-[0-9]{4}' regex_practice.txt

#4
#4.1
egrep -c '.+@.+\..+' regex_practice.txt
#4.2 search for "303-" followed by 3 digits, a dash, and 4 digits
egrep -o '303-[[:digit:]]{3}-[[:digit:]]{4}' regex_practice.txt
#4.3 search for anything ending in "@geocities.com"
egrep -o '.+@geocities.com' regex_practice.txt > email_results.txt

#5
git add email_results.txt

#6
git commit -m "Commit from shell script"
