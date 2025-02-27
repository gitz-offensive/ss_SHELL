#!/usr/bin/env bash

# Password Strength Checker
echo -e "<------ PASSWORD INSPECTOR ------>\n"
check_password_strength() {
    local password="$1"
    local score=0

    # Check length
    if [[ ${#password} -ge 8 ]]; then
        ((score++))
    fi

    # Check for numbers
    if [[ "$password" =~ [0-9] ]]; then
        ((score++))
    fi

    # Check for special characters
    if [[ "$password" =~ [^a-zA-Z0-9] ]]; then
        ((score++))
    fi

    # Evaluate strength
    case $score in
        3) echo "Strong password" ;;
        2) echo "Moderate password" ;;
        1) echo "Weak password" ;;
        0) echo "Very weak password" ;;
    esac
}

# Read user input
read -s -p "Enter a password to check its strength: " user_password
echo
check_password_strength "$user_password"
