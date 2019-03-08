#!/bin/bash
touch "./downloaded_urls.csv";
for (( k=7; k >=0; k--));
do
for (( j=7; j >=0; j--));
do
for (( i=9999; i >=0; i--));
do

if (($i < 10));
then
	url="http://bbcsfx.acropolis.org.uk/assets/0"$k"0"$j"000"$i".wav";
elif (($i < 100 && $i >= 10));
then
	url="http://bbcsfx.acropolis.org.uk/assets/0"$k"0"$j"00"$i".wav";
elif (($i < 1000 && $i >= 100));
then
	url="http://bbcsfx.acropolis.org.uk/assets/0"$k"0"$j"0"$i".wav";
else
	url="http://bbcsfx.acropolis.org.uk/assets/0"$k"0"$j""$i".wav";
fi

wget_out=$(wget -q -P $1 "$url");

if (( $? != 0 ));
  then
    echo -ne " Trying, "$url" , no file there, please be patient.\r"
  else
    echo "Found file "$url" and downloaded to specified location."
    echo ""$url", " >> "./downloaded_urls.csv";
fi

done
done
done
echo "All the archive is downloaded."


