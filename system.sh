#!/bin/bash

if [ $1 -eq 1 ];
then
echo -e "\e[1;36m \t\t\t<~~~~~ * SYSTEM STATUS COMMANDS (Expert Mode) * ~~~~~> \e[0m"
echo -e "\e[1;32m \n\n 1 ~~> Display the current date and time.
\n 2 ~~> Current disk usage.
\n 3 ~~> List current local and enviornmental.
\n 4 ~~> Display process status information.
\n\n 5 ~~> Exit Program.
\n\n\t\t\t Enter your choice:\n\n \e[0m" | more
else
echo -e "\e[1;36m \t\t\tSYSTEM STATUS COMMANDS (Novice Mode) * ~~~~~> \e[0m"
echo -e "\e[1;32m \n\n 1 ~~> Display the current date and time.
\n 2 ~~> Current disk usage.
\n 3 ~~> List current local and enviornmental.
\n 4 ~~> Display process status information.
\n\n 5 ~~> Quit -- Return to Main Menu.
\n\n\t\t\t Enter your choice:\n\n \e[0m" | more
fi

read a
printf "\n"

while ((1))
do
if [ "$a" -eq 1 ];
then
    echo ""
    date +"%d/%h/%Y %R"
    echo ""
elif [ "$a" -eq 2 ];
then
    echo ""
    df | more
    echo ""
elif [ "$a" -eq 3 ];
then
    echo ""
    printenv | more
    echo ""
elif [ "$a" -eq 4 ];
then
    echo ""
    ps -e | more
    echo ""
elif [ "$a" -eq 5 -a "$1" -eq 0 ];
then
  bash load.sh
  #echo ""
  clear
    exec bash myhelp.sh
elif [ "$a" -eq 5 -a "$1" -eq 1 ];
then
    echo -e "\e[1;33m Exiting the program. \e[0m"
    echo -e "\e[1;33m Thank you :) \e[0m"
    bash load.sh
    exit
else    
    echo -e "\e[1;31m Invalid option. \e[0m"
    echo -e "\e[1;36m Please Select a valid option ! \e[0m"
fi
echo -e "\e[1;36m Please Select from above options:  \e[0m"
read a
done
