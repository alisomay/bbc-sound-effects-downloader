# bbc-sound-effects-downloader
# usage-instructions
  
  - This is a simple shell script to download all the wav file archive released freely 
  by BBC, reachable in this address, http://bbcsfx.acropolis.org.uk/.
  - After you clone the repository or download the zip, place `bbc-sound-archive-download.sh` and `urls-to-download.csv` in the same folder, 
open the Terminal application you wish  and run,
```sh
$ bash shell-script-path "download-path"
```
  - Example,
```sh
$ bash ~/Downloads/bbc-sound-archive-download.sh "~/Desktop/my-download-folder/"
``` 
  - Then __press enter__.
  - The script will download all the archive which could be more than 300 GB, you can always stop it with `ctrl+c`.
  - The script will tell you when the downloads are finished and how many files downloaded when the process finishes.
  - The usage of these downloaded wav files is under the RemArc Licence.
  https://github.com/bbcarchdev/Remarc/blob/master/doc/2016.09.27_RemArc_Content%20licence_Terms%20of%20Use_final.pdf
