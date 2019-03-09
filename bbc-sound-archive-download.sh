#!/bin/bash

filepath="./urls-to-download.csv"
re="([0-9]{8}\.wav)"
downloadpath=$(echo $1 | tr -s /);

	
	while IFS=, read -r url
	do

		url=$(echo "$url" | tr -d ',');
		if [[ $url =~ $re ]]; then filename=$(echo ${BASH_REMATCH[1]}); fi

		if [ $(find $downloadpath -name $filename 2>/dev/null | wc -l) -gt 0 ]
			then
				echo -ne "Finding the right index to resume download, please be patient.\r";
			else
		
				wget -q --show-progress $downloadpath $url; 

				if (( $? != 0 ));
					then
						echo -ne " Trying, "$url" , no file there, please be patient.\r"
					else
						echo "Found file "$url" and downloading the file to the specified location."
				fi
		
		fi
	
	done < $filepath


count=$(ls -l "$1" | grep -v ^l | wc -l);
echo "The script has downloaded"$count" files."



