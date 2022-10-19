#!/bin/bash

function showProgramms(){
  local PROGRAMS=("$@")
  local i=1

for program in "${PROGRAMS[@]}"
do
 echo $i $program
((i++))
done
echo "What programs do want to install? example(1 2 3 or 2) or All(A)"


}
function showDistros(){
  local DISTROS=("$@")
  local i=1
  for distro in "${DISTROS[@]}" 
    do  
      echo $i $distro
      ((i++))
    done
    echo "What's your distro?"


}

export -f showProgramms
