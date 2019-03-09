#!/bin/bash

filepath="./urls-to-download.csv"
	
	while IFS=, read -r url
	do
	    echo "$url" | tr -d ',';
	    wget_out=$(wget -q -P $1 "$url"); 
		    
		if (( $? != 0 ));
			then
			  echo -ne " Trying, "$url" , no file there, please be patient.\r"
			else
			  echo "Found file "$url" and downloaded the file to the specified location."
		fi
	
	done < $filepath

count=$(ls -l "$1" | grep -v ^l | wc -l);
echo "The script downloaded"$count" files."


