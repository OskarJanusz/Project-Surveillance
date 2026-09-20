#!/bin/bash

##########
# Colors #
##########
RED=$'\033[31m'
GREEN=$'\033[32m'
YELLOW=$'\033[33m'
RESET=$'\033[0m'

##################
# Welcome screen #
##################
sleep 1
echo -e "${YELLOW}\n################################${RESET}"
sleep 1
echo -e "${YELLOW}  Loading ministry terminal...${RESET}"
sleep 1
echo -e "${YELLOW}################################${RESET}\n"
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
echo -e "\nAccount created successfully! Welcome, ${GREEN}$PLAYER_NAME${RESET}.\n"
sleep 3

#####################
# Starting new game #
#####################
echo -e "Please, log in to the surveillance system to start your work.\n"
sleep 3
echo -e "User: ${GREEN}$PLAYER_NAME${RESET}"
read -s -p "Password: " TYPED_PASSWORD
echo
sleep 3

if [ "$TYPED_PASSWORD" == "$PLAYER_PASSWORD" ]; then
    echo -e "\n${GREEN}Access granted!\nWelcome to the surveillance system, $PLAYER_NAME.${RESET}\n"
else
    echo -e "\n${RED}Access denied! Incorrect password.${RESET}\n"
    exit 1
fi

#################################
# Surveillance system main menu #
#################################
while true; do
    echo -e "${YELLOW}Surveillance System Main Menu${RESET}"
    echo -e "User: ${GREEN}$PLAYER_NAME${RESET}"
    sleep 1
    read -p "${YELLOW}Please select an option (1 - Scan citizen; 2 - Report violation; 3 - Exit): ${RESET}" MENU_OPTION
    sleep 1

    case $MENU_OPTION in
        1)
            echo -e "\nScanning citizen... (Module under development)\n"
            sleep 1
            ;;
        2)
            echo -e "\nReporting violation... (Module under development)\n"
            sleep 1
            ;;
        3)
            echo -e "\n${GREEN}Exiting the surveillance system. Goodbye, $PLAYER_NAME!${RESET}\n"
            sleep 1
            exit 0
            ;;
        *)
            echo -e "\n${RED}Invalid option. Please try again.${RESET}\n"
            sleep 1
            ;;
    esac
done