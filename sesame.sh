#!/bin/bash

#usage: sesame <config-file> 

echo "Open Sesame!"
while IFS=':' read line
do 
	SPLIT=(${line//:/ }) #replaces : with space and then interprets as array
	if [[ $line = android-studio:* ]] 
	then 
		C:/Program\ Files/Android/Android\ Studio/bin/studio64.exe ${SPLIT[1]} & 
	fi

	if [[ $line = atom:* ]]
	then 
		atom ${SPLIT[1]} 
	fi 

	if [[ $line = git-bash:* ]] 
	then 
		git-bash --cd=${SPLIT[1]} &  
	fi 
done < $1  
