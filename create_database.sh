#!/bin/bash
echo "*************************************************************************"
echo "*                             CREATE_DATABASE                           *"
echo "*************************************************************************"

echo "Enter the name of the Database: "
read

while [[ true ]]; do
  if [[ $REPLY =~ [^a-zA-Z_] ]] ; then
    echo "Database name contain special char or number(s) which is not allowed !"
    echo "Char and _ Only Allowed. Try again:"
    read
  else
    mkdir ./repo/$REPLY
    if [[ $? = 0 ]]; then
      echo "Database Created Succesfuly."
    else
      echo "Database NOT Created. Try Again. "
      read
      continue
    fi
    break
  fi
done

#return
