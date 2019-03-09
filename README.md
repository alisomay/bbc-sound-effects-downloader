# bbc-sound-effects-downloader
# usage-instructions
  - These instructions are intended for __non-developers__.
  - This is a simple shell script to download all the wav file archive released freely 
  by BBC, reachable in this address, http://bbcsfx.acropolis.org.uk/.
  - This script uses `wget` to download the files.
  - If you do not have it, open the Terminal application and run,
```sh
$ /usr/bin/ruby -e "$(curl -fsSL 
https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
  - The former command installs Home Brew package manager for OS X, https://brew.sh/
```sh
$ brew install wget
```
  - This command installs `wget` to your computer.
  - If you are a Linux user, I don't think you would need an explanation :).
  - After you clone the repository or download the zip, place `bbc-sound-archive-download.sh` 
and `urls-to-download.csv` in the same folder, open the Terminal application you wish  and 
run,
```sh
$ bash shell-script-path "download-path"
```
  - Example,
```sh
$ bash ~/Downloads/bbc-sound-archive-download.sh "~/Desktop/my-download-folder/"
``` 
  - Then __press enter__.
  - The script will download all the archive which is around 305 GB, you can always stop the 
script whenever you want with `ctrl+c` and then __resume__ by simply running the script with 
the __same paths__ again.
  - The script will tell you when the downloads are finished and how many files downloaded 
when the process finishes.
  - The usage of these downloaded wav files is under the RemArc Licence.
  
https://github.com/bbcarchdev/Remarc/blob/master/doc/2016.09.27_RemArc_Content%20licence_Terms%20of%20Use_final.pdf


