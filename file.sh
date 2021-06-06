#!/bin/bash

if [ $1 -eq 1 ];
then 
echo -e "\e[1;36m \t\t\t<~~~~~ * FILE AND DIRECTORY MANAGEMENT COMMANDS (Expert Mode) * ~~~~~> \e[0m"
echo "                                                    "
echo -e "\e[1;32m 1 ~~> Display the contents of a file.
\n 2 ~~> Remove a file.
\n 3 ~~> Copy a file.
\n 4 ~~> List a file.
\n 5 ~~> Size of a file.
\n\n 6 ~~> Exit Program. \e[0m"
echo -e "\e[1;36m \n\n\t\t\t Enter your choice:\n \e[0m" | more
else
echo -e "\e[1;36m \t\t\t<~~~~~ * FILE AND DIRECTORY MANAGEMENT COMMANDS (Novice Mode) * ~~~~~> \e[0m"
echo "                                                    "
echo -e "\e[1;32m 1 ~~> Display the contents of a file.
\n 2 ~~> Remove a file.
\n 3 ~~> Copy a file.
\n 4 ~~> List a file.
\n 5 ~~> Size of a file.
\n\n 6 ~~> Quit -- Return to main menu. \e[0m"
echo -e "\e[1;36m \n\n\t\t\t Enter your choice:\n \e[0m" | more
fi
echo ""
read choice
while [ 1 ]
do
while [ $choice -ne 1 -a $choice -ne 2 -a $choice -ne 3 -a $choice -ne 4 -a $choice -ne 5 -a $choice -ne 6 ]
   do 
     echo -e "\e[1;31m Invalid choice. \e[0m"
     echo -e "\e[1;36m Please Enter a valid choice: \e[0m"
     read choice
   done
if [ $choice -eq 1 ]
 then
  echo -e "\e[1;33m Enter the Path of File which you want to view:  \e[0m"   
  read file
  while [ ! -f $file  ]
   do 
    echo -e "\e[1;31m Invalid Path. \e[0m"
    echo -e "\e[1;36m Please Enter a valid path: \e[0m"
    read file
   done  
  cat $file
 fi 
if [ $choice -eq  2 ]
 then 
  echo -e "\e[1;33m Enter the Path of File which you want to remove:  \e[0m"    
  read file
  while [ ! -f $file1  ]
   do 
    echo -e "\e[1;31m Invalid Path. \e[0m"
    echo -e "\e[1;36m Please Enter a valid path: \e[0m"
    read file
   done  
  rm $file
  echo $file removed
 fi
if [ $choice -eq 3 ]
 then 
  echo -e "\e[1;33m Enter the Path of File which you want to copy:  \e[0m"   
  read file1
  while [ ! -f "$file1"  ]
   do 
    echo -e "\e[1;31m Invalid Path. \e[0m"
    echo -e "\e[1;36m Please Enter a valid path: \e[0m"
    read file1
   done  
  echo -e "\e[1;36m Enter the Destination Path:  \e[0m" 
  read file2
  while [ ! -d "$file2"  ]
   do 
    echo -e "\e[1;31m Invalid Path. \e[0m"
    echo -e "\e[1;36m Please Enter a valid path: \e[0m"
    read file2
   done  
  cp $file1 $file2
  echo $file1 copied to $file2
fi 
if [ $choice -eq  4 ]
 then 
  echo -e "\e[1;33m Enter the Path of File which you want to list:  \e[0m"   
  read file
  while [ ! -f $file1  ]
   do 
    echo -e "\e[1;31m Invalid Path. \e[0m"
    echo -e "\e[1;36m Please Enter a valid path: \e[0m"
    read file
   done  
  ls -l --color $file
 fi
if [ $choice -eq  5 ]
 then 
  echo -e "\e[1;36m Enter the Path of file:  \e[0m"   
  read file
  while [ ! -f $file1  ]
   do 
    echo -e "\e[1;31m Invalid Path. \e[0m"
    echo -e "\e[1;36m Please Enter a valid path: \e[0m"
    read file
   done  
  ls -lh $file | awk '{ if(NR==1) print $2 }'
 fi 
if [ $choice -eq 6 ]
 then 
  if [ "$1" == 1 ]
   then 
    echo -e "\e[1;33m Exiting the program \e[0m"
    echo -e "\e[1;33m Thank you :) \e[0m"
    sleep 1
    exit 1
  else
   clear
   echo -e "\e[1;32m Opening main menu \e[0m"
   bash myhelp.sh
   exit
   fi
fi
echo -e "\e[1;36m Enter your choice:  \e[0m"
   read choice      
done
