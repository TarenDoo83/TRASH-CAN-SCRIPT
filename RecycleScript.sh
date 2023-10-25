#!/bin/bash

#User in directory folder
user=$(dscl . list /Users | grep -v ^_)


for dir in $user
do
	usertrash= $(ls ~/.Trash | grep .app)
	if [ ! $usertrash ]; 
    then 
       Result="Compliant"
    else
       Result="$usertrash"
    fi
done

echo "<result>$Result</result>"