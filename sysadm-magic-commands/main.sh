#!/bin/sh
if [ -z $1 ]
  then
  echo "no argument given"
else
  case $1 in
  space-check)
      df -h
      ;;
  file-check)
      if [ -z $2 ]
      then
        echo "please give the path"
      else
        find $2 -type f -size "$3"M -exec ls -lh {} \;
      fi
      ;;
  *)
    echo "invalid command"
  esac
fi 
