#!/bin/bash

error(){


echo $1
exit 1

}
print(){
 
 #printing the files present in directory 
 printing=$(ls )
 echo $printing

 echo "Enter the first filename-"
 read filename
 
 if [[ -z "$filename" ]]
 then 
    echo "no input"
    echo "input=>sample_filename_Dec-2019.pdf"
    echo "Expected Output=>9102-ecD_emanelif_elpams"
    echo error "Exiting"

 else
    echo "Input=>$filename"
    filename2=$(echo $filename | cut -d'.' -f1)
    reverse=$(echo $filename2 | rev)
    echo "Outout=>$reverse"
 fi
}

print
