#!/bin/bash


copy(){
  
	files=$(find ~/mod/* -mtime -10 | head -n 20)
	newarr=($files)
#	echo ${newarr[0]}
	folder=$(date +%F)
	mkdir ~/$folder



	for i in {0..19} 
	
	do 
	 cp -p ${newarr[$i]} ~/$folder/
	done
}

copy
