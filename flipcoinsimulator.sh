#!/bin/bash
declare -A num
i=1
head=0
tail=0
while [ true ]
do
  num[$i]=$((RANDOM%2+1))
  if [ ${num[$i]} -eq 1 ]
  then
    head=$(($head+1))
    if [ $head -eq 21 ]
    then
       echo "Head is first reached 21 times"
       break
    fi
  elif [ ${num[$i]} -eq 2 ] 
  then
    tail=$(($tail+1))
    if [ $tail -eq 21 ]
    then
       echo "tail is first reached 21 times"
       break
    fi
  else 
      echo "Tie"
      diff=$(($head-$tail))
      if(($diff==2))
      then
	   echo "Game over!"
      else
         i=0
         continue
      fi 
  fi
  ((i++))
done
echo "${num[*]}"
echo "HeadCount=$head"
echo "TailCount=$tail"
diff=$(($head-$tail))
if [ $diff -gt 0 ]
then
   echo "Difference = $diff"
else
    diff=$(($diff*-1))
    echo "$diff"
fi
   
