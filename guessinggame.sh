numfiles=$(echo $(ls | wc -l))
function guess {
  read number  
  echo $number  
}
while [[ true ]]
do
  echo "Guess the number of files in this directory: "
  numtyped=$(guess)
  if [[ $numtyped -lt $numfiles ]]
  then 
    echo "¡Wrong! Try again, enter a higher number."
    echo ""
  elif [[ $numtyped -gt $numfiles ]]
  then
    echo "¡Wrong! Try again, enter a lower number."
    echo ""
  else
    echo "¡Great! You guessed"
    counter=1
    for file in $(ls)
    do
      echo "$counter. $file"
      counter=$(expr $counter + 1)
    done
    break
  fi
done
