#!/bin/bash
age=$(( RANDOM %(70-20  +1) +20))
for (( ; ; ))
do 
  read -p"Guess the age between 20-70: " user_guess
  if ! [[ "$user_guess" =~ ^[0-9]+(\.[0-9]+)?$ ]]
  then
    echo "Please enter a number between 20 and 70"
    continue
  fi
  if [ "${user_guess%%.*}" -eq "$age" ]
  then 
    echo "Your guess is correct"
    break
  else 
    echo "Your guess is wrong, please try again"
    if [ "${user_guess%%.*}" -gt "$age" ]
    then
      echo "Age is lower than $user_guess"
    else 
      echo "Age is higher than $user_guess"
    fi
  fi
done