#!/bin/bash
#Tejbir Singh
#10482218
# this generates a random number between 20 and 70 and assigns it to age
age=$(( RANDOM %(70-20  +1) +20))

#infite loop
for (( ; ; ))
do 
  read -p"Guess the age between 20-70: " user_guess
  
  #if user enters anything except integers it prompts them to enter the required input
  if ! [[ "$user_guess" =~ ^[0-9]+(\.[0-9]+)?$ ]]
  then
    echo "Please enter a number between 20 and 70"
    continue
  fi
  
  #if user guesses the age then it tells them the answer is correct aand vice versa
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
