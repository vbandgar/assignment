#!bin/bash
start_game(){
  echo "Welcome in the game."
  echo "Guess how many files are present in the current directory......."
  total_file=$(ls | wc -l)
  itr=0
  read usr_in
  while [[ $usr_in -ne $total_file ]]
  do
    let itr=$itr+1
    if [[ $usr_in -gt $total_file ]]
    then
      echo "Your guess was higher than actual number of files."
      echo "Guess Again ......."
      read usr_in
    else
      echo "There are more files than you thought."
      echo "Guess Again ......."
      read usr_in
    fi
  done
  if [[ $itr -eq 0 ]]
  then
    echo "[BULL'S EYE] You guessed it correctly in the first try."
  else
    let itr=$itr+1
    echo "Yeah, you guessed correct number of file in $itr chance."
  fi
}

start_game
