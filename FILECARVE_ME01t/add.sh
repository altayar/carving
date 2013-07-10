#!/bin/bash
#sed '/6576/a cat h2txt/6576.txt >> h2txt/$header.txt' catchfooter.sh
sed -i "/$1/a cat h2txt/$2.txt >> h2txt/\$header.txt" ~/projects/carving/FILECARVE_ME01/catchfooter.sh
