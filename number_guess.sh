#! /bin/bash

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

echo "Enter your username:"
read USERNAME
echo "Welcome, $USERNAME! It looks like this is your first time here."
echo "Guess the secret number between 1 and 1000:"

NUMBER_OF_GUESSES=0
while true
do
  read GUESS
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    continue
  fi
  NUMBER_OF_GUESSES=$(( NUMBER_OF_GUESSES + 1 ))
  if [[ $GUESS -eq $SECRET_NUMBER ]]
  then
    break
  elif [[ $GUESS -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
  else
    echo "It's higher than that, guess again:"
  fi
done

echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
