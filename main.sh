#!/bin/bash
echo "Welcome to My Database Engine"
PS3="Waiting your selection: "
select choice in New_Database Create_Table Insert_into_Table Update_Table Delete_Table  Exit
do
  case $choice in
    New_Database)  echo "New_Database"
    . ./create_database.sh
    ;;
    Create_Table)  echo "Create_Table"
    ;;
    Insert_into_Table)  echo "Insert_into_Table"
    ;;
    Update_Table)   echo "Update_Table"
    ;;
    Exit)
      echo "Bye Bye"
      exit 0
    ;;
    *) echo "Undefiend Option Please Select Num [ 1-6 ] !! ";;
  esac
done
