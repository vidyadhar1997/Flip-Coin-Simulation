#!/bin/bash -x

read -p "Enter the number of flips : " count1

Head=1
Tail=1
count=1

while [[ $count -le $count1 ]] && [[ $count -gt 0 ]]
do

   toss=$(( RANDOM%2 ))
   if [ $toss -eq 1 ]
   then
        echo "head" $Head
        (( Head ++ ))
   else
        echo "tail" $Tail
        (( Tail++ ))
   fi
   (( count ++ ))

done

   if [ $Head -gt $Tail ]
   then
        echo "Head is win"
   elif [ $Tail -eq $Head ]
   then
        echo "match is tie"
   else
        echo "Tail is Win"
   fi






