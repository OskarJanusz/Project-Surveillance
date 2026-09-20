#!/bin/bash

##########
# Colors #
##########
RED='\033[31m'
GREEN='\033[32m'
RESET='\033[0m'

##################
# Welcome screen #
##################
sleep 1
echo -e "\n################################"
sleep 1
echo "  Loading ministry terminal..."
sleep 1
echo -e "################################\n"
sleep 3

#######################
# Creating new player #
#######################
echo -e "As a new employee of the ministry, you need to create a new account to access the surveillance system.\n"
sleep 3
read -p "Please enter your desired username: " PLAYER_NAME
sleep 1
read -s -p "Please enter your new password: " PLAYER_PASSWORD
echo
sleep 1
echo -e "\nAccount created successfully! Welcome, $PLAYER_NAME.\n"
sleep 3

#####################
# Starting new game #
#####################
echo -e "Please, log in to the surveillance system to start your work.\n"
sleep 3
echo "User: $PLAYER_NAME"
read -s -p "Password: " TYPED_PASSWORD
echo
sleep 3

if [ "$TYPED_PASSWORD" == "$PLAYER_PASSWORD" ]; then
    echo -e "\n${GREEN}Access granted!\nWelcome to the surveillance system, $PLAYER_NAME.${RESET}\n"
else
    echo -e "\n${RED}Access denied! Incorrect password.${RESET}\n"
    exit 1
fi