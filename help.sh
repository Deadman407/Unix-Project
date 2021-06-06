#!/bin/bash

echo -e "\e[1;36m \t\t<~~~~~ * Welcome to Unix Project by Vicky Nayak ! * ~~~~~>\n \e[0m"
echo -e "\e[1;32m \t * To perform any task on this system all you need to do is select your choice from the given set of options. *\n
~> In File Menu you will find commands like ls, cat, cp, etc.\n
~> In System Status Menu you will find commands like ps, df, date, printenv, etc.\n
~> In Text Menu you will find commands like grep, diff, wc, etc.\n
~> The Expert Mode is enabled when user one argument with the command.\n\n \e[0m"

echo -e "\e[1;36m \t\t< Author: Vicky Kumar Nayak >
\t\t< Date: Fri, 04 Jun 2021 17:29:11 +0530 >
\t\t< Email:  vickykumar.nayak.cse20@itbhu.ac.in \e[0m"

echo -e "\e[1;33m \n\n <~~~~~ * Press any key to go back to main program. * ~~~~~>\n \e[0m"
read opt
bash load.sh
clear
exec bash myhelp.sh

