isexpert=1
if [  "$#" -eq  "0"  ]
  then
  isexpert=0
  echo -e "\e[1;36m \t\t\t<~~~~~ * UNIX HELP MAIN MENU * ~~~~~>  \e[0m"
  echo "                                     "
  echo -e "\e[1;32m  1 ~~> File and Directory Management Commands.
  2 ~~> Text Processing Commands.
  3 ~~> System Status Commands.
  4 ~~> Exit.\n\n \e[0m"
  echo "                                     "
  echo -e "\e[1;36m Enter your choice:\n \e[0m"
  read choice
  while [ $choice -ne 1 -a $choice -ne 2 -a $choice -ne 3 -a $choice -ne 4 ]
   do
     echo -e "\e[1;31m Invalid choice. \e[0m"
     echo -e "\e[1;36m Please Enter a valid choice: \e[0m"
     read choice
   done
  if [ $choice -eq 1 ]
   then
    echo -e "\e[1;32m Opening the File Management Submenu. \e[0m"
    bash load.sh
    #echo ""
    clear
    exec bash file.sh $isexpert
  elif [ $choice -eq 2 ]
   then
     echo -e "\e[1;32m Opening the Text Processing Submenu. \e[0m"
     bash load.sh
     #echo ""
     clear
     exec bash text.sh $isexpert
  elif [ $choice -eq 3 ]
   then
     echo -e "\e[1;32m Opening the System Status Submenu. \e[0m"
     bash load.sh
     #echo ""
     clear
     exec bash system.sh $isexpert
  else
    echo -e "\e[1;33m Exiting the program. \e[0m"
    echo -e "\e[1;33m Thank you :) \e[0m"
    bash load.sh
     exit
   fi
elif [ "$1" != "help" -a "$1" != "status" -a "$1" != "text" -a "$1" != "file" ]
   then
    echo -e "\e[1;31m Invalid choice. \e[0m"
    echo -e "\e[1;36m Please Enter a valid choice. \e[0m"
    echo -e "\e[1;33m Exiting the program. \e[0m"
    echo -e "\e[1;33m Thank you :) \e[0m"
    exit 1
elif [ "$1" == "file" ]
   then
    echo -e "\e[1;32m Opening the File Management Submenu. \e[0m"
    bash load.sh
    #echo ""
    clear
    exec bash file.sh $isexpert
elif [ "$1" == "text" ]
   then
    echo -e "\e[1;32m Opening the Text Processing Submenu. \e[0m"
    bash load.sh
    #echo ""
    clear
    exec bash text.sh $isexpert
elif [ "$1" == "status" ]
   then
    echo -e "\e[1;32m Opening the System Status Submenu. \e[0m"
    bash load.sh
    #echo ""
    clear
    exec bash system.sh $isexpert
elif [ "$1" == "help" ]
   then
    echo -e "\e[1;36m About the program. \e[0m"
    bash load.sh
    #echo ""
    clear
    exec bash help.sh
fi
