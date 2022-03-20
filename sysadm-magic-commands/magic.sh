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

  delete-old-file)
    if [ -z $2 ]
      then
        echo "please give the path"
      else
        find $2  -mtime +"$3" -exec rm {} \;
      fi
      ;;

  *)
    echo "invalid command"
    cat ./README.md
  esac
fi 
