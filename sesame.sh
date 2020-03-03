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

	if [[ $line = chrome:* ]] 
	then
		chrome ${SPLIT[1]} & 
	fi

	if [[ $line = file-sys:* ]] 
	then 
		start ${SPLIT[1]} & 
	fi

	if [[ $line = intelij:* ]]
	then 
		idea.bat ${SPLIT[1]} & 
	fi 

        #things to add: 
	#Unity 
	#Android Emulator 
	#FS - doesn't work 
	#Intellij - doesn't work 
	#GUI where you can put program filepaths and configs 
done < $1 
exit
exit 
