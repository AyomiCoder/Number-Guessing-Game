#!/bin/bash

# Set up PSQL variable for querying the database
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Prompt for username
echo "Enter your username:"
read USERNAME

# Fetch user information if the username exists
USER_INFO=$($PSQL "SELECT user_id, games_played, best_game FROM users WHERE username='$USERNAME'")

# Check if user exists
if [[ -z $USER_INFO ]]; then
  # New user
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  
  # Insert new user into the database
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  
  # Initialize games played and best game for the new user
  GAMES_PLAYED=0
  BEST_GAME="N/A"  # Best game is not available for new users
else
  # Existing user
  IFS="|" read USER_ID GAMES_PLAYED BEST_GAME <<< "$USER_INFO"
  
  # Check for NULL best_game and set to "N/A"
  if [[ -z $BEST_GAME || $BEST_GAME == "NULL" ]]; then
    BEST_GAME="N/A"
  fi
  
  # Print welcome back message with user's statistics
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Generate a random secret number between 1 and 1000
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

# Initialize variables for tracking guesses
GUESS_COUNT=0
GUESS=""

# Function to prompt and validate guesses
function guess_prompt() {
  echo "Guess the secret number between 1 and 1000:"
  while true; do
    read GUESS
    # Check if the input is an integer
    if ! [[ "$GUESS" =~ ^[0-9]+$ ]]; then
      echo "That is not an integer, guess again:"
      continue
    fi
    
    (( GUESS_COUNT++ ))  # Increment the guess count

    # Provide feedback on the guess
    if [[ $GUESS -gt $SECRET_NUMBER ]]; then
      echo "It's lower than that, guess again:"
    elif [[ $GUESS -lt $SECRET_NUMBER ]]; then
      echo "It's higher than that, guess again:"
    else
      # Correct guess
      echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
      break
    fi
  done
}

# Start the guessing game
guess_prompt

# Update the user's total games played
UPDATE_GAMES_PLAYED_RESULT=$($PSQL "UPDATE users SET games_played = games_played + 1 WHERE user_id=$USER_ID")

# Update the user's best game if this game is better
if [[ $BEST_GAME == "N/A" || $GUESS_COUNT -lt $BEST_GAME ]]; then
  UPDATE_BEST_GAME_RESULT=$($PSQL "UPDATE users SET best_game = $GUESS_COUNT WHERE user_id=$USER_ID")
fi

# Log the game result in the games table
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games (user_id, guesses, secret_number) VALUES ($USER_ID, $GUESS_COUNT, $SECRET_NUMBER)")
