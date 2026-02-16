#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

TRUNCATE=$($PSQL "TRUNCATE TABLE games, teams;")
cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
if [[ $WINNER != "winner" && $OPPONENT != "opponent" && $WINNER != $OPPONENT ]]
then
# insert teams into teams table
INSERT_TEAM_RESULTS=$($PSQL "INSERT INTO teams (name) VALUES ('$WINNER') ON CONFLICT (name) DO NOTHING")
INSERT_TEAM_RESULTS=$($PSQL "INSERT INTO teams (name) VALUES ('$OPPONENT') ON CONFLICT (name) DO NOTHING")

# insert into games
  # get winner_id
WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

INSERT_GAMES_RESULT=$($PSQL "INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")


fi
done

