# bbc-sound-effects-downloader
# usage-instructions
  
  - This is a simple shell script to download all the wav file archive 
released freely 
  by BBC, reachable in this address, http://bbcsfx.acropolis.org.uk/.
  - After you clone the repository or download the zip, place 
__bbc-sound-archive-download.sh__ in a folder, open the Terminal 
application,  and run,
```sh
$ bash shell-script-path "download-path"
```
  - Example,
```sh
$ bash ~/Downloads/bbc-sound-archive-download.sh 
"~/Desktop/my-download-folder/"
``` 
  - Then __press enter__.
  - The script will download all the archive which could be more than 
300 GB, you can always stop it with `ctrl+c`.
  - The script will also create a csv file called `downloaded_urls.csv` 
and fill it with the working file urls.
  - The usage of these audio files is under the RemArc Licence.
  	
	https://github.com/bbcarchdev/Remarc/blob/master/doc/2016.09.27_RemArc_Content%20licence_Terms%20of%20Use_final.pdf

