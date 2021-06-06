#!/bin/bash
if [ $1 -eq 1 ];
then
echo -e "\e[1;36m \t\t\t<~~~~~ * TEXT PROCESSING COMMANDS (Expert Mode) * ~~~~~> \e[0m"
echo -e "\e[1;32m \n\n 1 ~~> Search a file for a pattern.
\n 2 ~~> Count lines, words, and characters in specified files.
\n 3 ~~> Display line differences between two files.
\n\n 4 ~~> Quit -- Exit Program. \e[0m"
echo -e "\e[1;36m \n\n\t\t\t Enter your choice:\n \e[0m" | more
else
echo -e "\e[1;36m \t\t\t<~~~~~ * TEXT PROCESSING COMMANDS (Novice Mode) * ~~~~~>\e[0m"
echo -e "\e[1;32m \n\n 1 ~~> Search a file for a pattern.
\n 2 ~~> Count lines, words, and characters in specified files.
\n 3 ~~> Display line differences between two files.
\n\n 4 ~~> Quit -- Return to Main Menu. \e[0m"
echo -e "\e[1;36m \n\n\t\t\t Enter your choice:\n \e[0m" | more
fi

read opt

while ((1));
do
if [ "$opt" -eq 1 ];
then
    echo -e "\e[1;36m \nEnter file to check for pattern :  \e[0m"
    read filename
    echo ""
    echo -e "\e[1;36m Enter the pattern to search for :  \e[0m"
    read pattern
    echo ""
    grep -E $pattern $filename
    echo ""
elif [ "$opt" -eq 2 ];
then
    echo -e "\e[1;36m Enter filename :  \e[0m"
    read filename
    echo ""
    echo -n "Number of lines : "
    wc -l $filename | awk '{ print $1 }'
    echo ""
    echo -n "Number of words : "
    wc -w $filename | awk '{ print $1 }'
    echo ""
    echo -n "Number of characters : "
    wc -c $filename | awk '{ print $1 }'
    echo ""
elif [ "$opt" -eq 3 ];
then
    echo -e "\e[1;36m \nEnter files to chech pattern in :  \e[0m"
    read filename
    echo ""
    diff ${filename[0]} ${filename[1]}
    echo ""
elif [ "$opt" -eq 4 -a $1 -eq 0 ];
then
  bash load.sh
  #echo ""
  clear
    exec bash myhelp.sh
elif [ "$opt" -eq 4 -a $1 -eq 1 ];
then
  echo -e "\e[1;33m Exiting the program. \e[0m"
  echo -e "\e[1;33m Thank you :) \e[0m"
  bash load.sh
  exit
else
    echo -e "\e[1;36m Please Select a valid option ! \e[0m"
fi
echo -e "\e[1;36m Please Select from above options:  \e[0m"
read opt
done
