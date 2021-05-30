#!/bin/bash
declare -A num
declare -A num1
declare -A num2
a=1
b=1
c=1
head=0
tail=0
HH=0
HT=0
TH=0
TT=0
HHH=0
HHT=0
HTH=0
THH=0
HTT=0
THT=0
TTH=0
TTT=0

singlet () {
while [ $a -le 10 ]
do
  flipcoin=$((RANDOM%2+1))
  if [ $flipcoin -eq 1 ]
  then
      num[$a]="H"
      head=$(($head+1))
  else
      num[$a]="T"
      tail=$(($tail+1))
  fi
  ((a++))
done
echo "${num[*]}"
echo "Head = $head times"
echo "Tail = $tail times"
headper=$((($head*100)/10)) 
echo "Headpercentage = $headper %"
tailper=$((($tail*100)/10))
echo "Tailpercentage = $tailper %"
}
doublet () {
while [ $b -le 40 ]
do
  flipcoin1=$((RANDOM%4+1))
  if [ $flipcoin1 -eq 1 ]
  then
      num1[$b]="HH"
      HH=$(($HH+1))
  elif [ $flipcoin1 -eq 2 ]
  then
      num1[$b]="HT"
      HT=$(($HT+1))
  elif [ $flipcoin1 -eq 3 ]
  then
      num1[$b]="TH"
      TH=$(($TH+1))
  elif [ $flipcoin1 -eq 4 ]
  then
      num1[$b]="TT"
      TT=$(($TT+1))
  else
      echo "Wrong"
  fi
  ((b++))
done
echo "${num1[*]}"
echo "HH = $HH times"
echo "HT = $HT times"
echo "TH = $TH times"
echo "TT = $TT times"
HHper=$((($HH*100)/40))
echo "HHpercentage = $HHper %"
HTper=$((($HT*100)/40))
echo "HTpercentage = $HTper %"
THper=$((($TH*100)/40))
echo "THpercentage = $THper %"
TTper=$((($TT*100)/40))
echo "TTpercentage = $TTper %"
}
triplet () {
while [ $c -le 60 ]
do
  flipcoin2=$((RANDOM%8+1))
  if [ $flipcoin2 -eq 1 ]
  then
      num2[$c]="HHH"
      HHH=$(($HHH+1))
  elif [ $flipcoin2 -eq 2 ]
  then
      num2[$c]="HHT"
      HHT=$(($HHT+1))
  elif [ $flipcoin2 -eq 3 ]
  then
      num2[$c]="HTH"
      HTH=$(($HTH+1))
  elif [ $flipcoin2 -eq 4 ]
  then
      num2[$c]="THH"
      THH=$(($THH+1))
  elif [ $flipcoin2 -eq 5 ]
  then
      num2[$c]="HTT"
      HTT=$(($HTT+1))
  elif [ $flipcoin2 -eq 6 ]
  then
      num2[$c]="THT"
      THT=$(($THT+1))
  elif [ $flipcoin2 -eq 7 ]
  then
      num2[$c]="TTH"
      TTH=$(($TTH+1))
  elif [ $flipcoin2 -eq 8 ]
  then
      num2[$c]="TTT"
      TTT=$(($TTT+1))
  else
      echo "Wrong"
  fi
  ((c++))
done
echo "${num2[*]}"
echo "HHH = $HHH times"
echo "HHT = $HHT times"
echo "HTH = $HTH times"
echo "THH = $THH times"
echo "HTT = $HTT times"
echo "THT = $THT times"
echo "TTH = $TTH times"
echo "TTT = $TTT times"
HHHper=$((($HHH*100)/60))
echo "HHHpercentage = $HHHper %"
HHTper=$((($HHT*100)/60))
echo "HHTpercentage = $HHTper %"
HTHper=$((($HTH*100)/60))
echo "HTHpercentage = $HTHper %"
THHper=$((($THH*100)/60))
echo "THHpercentage = $THHper %"
HTTper=$((($HTT*100)/60))
echo "HTTpercentage = $HTTper %"
THTper=$((($THT*100)/60))
echo "THTpercentage = $THTper %"
TTHper=$((($TTH*100)/60))
echo "TTHpercentage = $TTHper %"
TTTper=$((($TTT*100)/60))
echo "TTTpercentage = $TTTper %"

}

singlet
doublet
triplet


